call plug#begin('~/.config/nvim')

Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 35, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 35, 4)<CR>
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_quickfix_mode= 0 "Ignores all warnings. Should disable when file is healthy!" 

"Plug 'vim-airline/vim-airline'  Because Ranger doesn't play nicely
"let g:airline_theme='raven'
"Plug 'vim-airline/vim-airline-themes'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
      \ 'coc-html',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-python',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-emmet',
      \ 'coc-tag',
      \ ]

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


let g:coc_snippet_next = '<tab>'

call plug#end()
"
set ignorecase
set nu
set visualbell
set relativenumber
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=2

set keymap=greek_utf-8
set iminsert=0
inoremap <c-l> <c-^>
"get rid of ex mode
map <S-q> <Nop>

let g:markdown_fenced_languages = ['python', 'javascript', 'django']

filetype plugin on
set omnifunc=syntaxcomplete#Complete
