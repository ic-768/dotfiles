call plug#begin('~/.config/nvim')
""" CODE
Plug 'terryma/vim-expand-region'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mbbill/undotree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
packadd nvim-treesitter

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
EOF
set nocompatible
filetype plugin indent on

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' "Config is farther down
Plug 'samoshkin/vim-mergetool'

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-json',
			\ 'coc-prettier',
			\ 'coc-eslint',
			\ 'coc-pyright',
      \ 'coc-emmet',
      \ 'coc-tsserver',
      \ 'coc-explorer',
      \ 'coc-tag']
""" UTILITY
Plug 'tpope/vim-surround'
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 35, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 35, 4)<CR>
"let g:coc_snippet_next = '<tab>'
command! -nargs=0 Prettier :CocCommand prettier.formatFile
Plug 'ap/vim-css-color'

Plug 'f-person/git-blame.nvim'
let g:gitblame_message_template = '        <author> • <summary> • <date>'
let g:gitblame_date_format = '%r'

call plug#end()
""" REMAPS AND SETTINGS
set ignorecase
set nu
set visualbell
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set mouse=a
set ve=all "freely move cursor
"set cursorline
"netrw make browsing dir working dir
let g:netrw_keepdir=0
set keymap=greek_utf-8
set iminsert=0
let g:markdown_fenced_languages = ['python', 'javascript', 'django']

set omnifunc=syntaxcomplete#-complete
colorscheme gruvbox
highlight clear CocErrorSign
highlight clear CocInfoSign
highlight clear SignColumn
set signcolumn:number

nnoremap <c-n> :Texplore <Enter>
" Format from JSX to CSS
nnoremap <c-l> :s/\C\([A-Z]\)/-\L\1/ge\|:s/"//g\|:s/,\ */;\r/g <Enter>
" Add braces to arrow function
nnoremap <c-j> i{l%a}%areturn <Esc>
"Remove braces from arrow function
nnoremap <c-h> di{v%pdw

"use Escape to exit :term input mode
:tnoremap <Esc> <C-\><C-n>
"Toggle previous buffer with Backspace
nnoremap <Backspace> <C-^>

let mapleader = ","
" COPIED FROM COC NVIM DEFAULT GITHUB CONFIG
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <leader> i  <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)

"<C-k> to autocomplete
inoremap <silent><expr> <C-k> coc#refresh()
nmap <silent> <C-k> viwo<Esc>ea<C-k>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Allow opening explorer in tab / as floating window
" tab currently not mapped to anything
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\ }

nmap :E <Cmd>CocCommand explorer<CR>
nmap :S <Cmd>CocCommand explorer --preset floating<CR>

"Telescope
nmap <leader>, <Cmd>Telescope find_files disable_devicons=true<CR>

"Open sourced scss
nmap <leader>s /import.*\.scss/e<CR> <Plug>(coc-definition):noh<CR>

"Add className to component
nmap <leader>c :s/\(<\w*\)\(\_.\{-}\)/\1 className=""\2/e <CR> :noh<CR> f"a

"trigger when hovering over filename in coc-explorer to create a react component
function! MakeComponent()
  let componentName = input('Enter filename: ')
	call CocAction('runCommand', 'explorer.doAction', 0, ['copyFilepath'])
  return ':!~/Scripts/Web/react-component.sh '.componentName." \<c-r>".'0 -tsc'."\<cr>"." -tsc\<cr>"."\<cr>"
endfunction

nnoremap <expr> <leader>m MakeComponent()

lua <<EOF
require('telescope').setup {
	defaults={
	file_ignore_patterns = { "node_modules" }
	}
}
EOF
