" .vimrc

" be iMproved 
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'davidzchen/vim-bazel'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

" disable cursor blink in gui
set guicursor+=a:blinkon0

" setup highlighting
set cursorline

" basic settings
set hidden

" set colorscheme
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-grayscale

" Set up handy vim-tmux-navigator keys.  I like C-k to be kill line, even in
" vim, so set these to use alt instead. Unfortunately terminal emulators, meta
" keys, escape, text editors -- you know, computers.
"
" This leads to the following silliness to tell vim to treat escape-prefixed
" keys as meta-modified ones instead...
for key in ["h","j","k","l","\\"]
    exec "set <M-".key.">=\e".key
endfor

" ...and then actually map the keys.
nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <m-j> :TmuxNavigateDown<cr>
nnoremap <silent> <m-k> :TmuxNavigateUp<cr>
nnoremap <silent> <m-l> :TmuxNavigateRight<cr>
nnoremap <silent> <m-\> :TmuxNavigatePrevious<cr>

" powerline setup
let g:Powerline_symbols="fancy"
if has("gui_macvim")
    set guifont="Menlo\ for\ Powerline:h12"
endif

" easymotion setup
let g:EasyMotion_keys = 'fjdkslwovneiwo'

" toggle pastemode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" UltiSnips
" configure trigger to be tab / s-tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsEditSplit="horizontal"

" gundo mapping
nnoremap <F5> :GundoToggle<CR>
