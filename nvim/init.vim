call plug#begin('~/.config/nvim')
Plug 'tpope/vim-surround'
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 35, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 35, 4)<CR>

Plug 'navarasu/onedark.nvim'
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_quickfix_mode= 0 "Ignores all warnings. Should disable when file is healthy!" 


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
packadd nvim-treesitter
Plug 'nvim-treesitter/playground'


lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
EOF

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-json',
			\ 'coc-prettier',
			\ 'coc-eslint',
			\ 'coc-pyright',
      \ 'coc-emmet',
      \ 'coc-tag']

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_snippet_next = '<tab>'
Plug 'ap/vim-css-color'

call plug#end()
"
set ignorecase
set nu
set visualbell
set relativenumber
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set mouse=a
set cursorline
"Change dir on file edit
autocmd BufEnter * silent! lcd %:p:h 
"netrw make browsing dir working dir
let g:netrw_keepdir=0 

set keymap=greek_utf-8
set iminsert=0
inoremap <c-l> <c-^>
"get rid of ex mode
map <S-q> <Nop>
inoremap <c-l> <c-^>

nnoremap <c-n> :Texplore <Enter>
let g:markdown_fenced_languages = ['python', 'javascript', 'django']

" Format from JSX to CSS
nnoremap <c-l> :s/\C\([A-Z]\)/-\L\1/ge\|:s/"//g\|:s/,\ */;\r/g <Enter>

"filetype plugin on
set omnifunc=syntaxcomplete#-complete
colorscheme onedark
"use Escape to exit :term input mode 
:tnoremap <Esc> <C-\><C-n> 


"colorscheme myTheme
