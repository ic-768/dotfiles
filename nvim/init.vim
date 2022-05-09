call plug#begin('~/.config/nvim')
""" CODE 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
packadd nvim-treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
EOF
Plug 'neoclide/coc.nvim', {'branch': 'release'}  "This is somehow responsible for the sidebar
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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
"Change dir on file edit
autocmd BufEnter * silent! lcd %:p:h 
"netrw make browsing dir working dir
let g:netrw_keepdir=0 

set keymap=greek_utf-8
set iminsert=0
inoremap <c-l> <c-^>
"nnoremap <c-n> :Texplore <Enter>
let g:markdown_fenced_languages = ['python', 'javascript', 'django']

" Format from JSX to CSS
nnoremap <c-l> :s/\C\([A-Z]\)/-\L\1/ge\|:s/"//g\|:s/,\ */;\r/g <Enter>
" Add braces to arrow function
nnoremap <c-j> i{l%a}%areturn <Esc>
"Remove braces from arrow function
nnoremap <c-h> di{v%pdw


"filetype plugin on
set omnifunc=syntaxcomplete#-complete
colorscheme gruvbox
highlight clear CocErrorSign
highlight clear CocInfoSign 
highlight clear SignColumn
set signcolumn:number

"use Escape to exit :term input mode 
:tnoremap <Esc> <C-\><C-n> 
"Toggle previous buffer with Backspace
nnoremap <Backspace> <C-^>

" COPIED FROM COC NVIM DEFAULT GITHUB CONFIG
"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> ,i <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)

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


