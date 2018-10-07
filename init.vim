" Force writing without sudo                
cmap w!! w !sudo tee > /dev/null %

" Various settings
syntax on
set number 
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set showmatch

" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/seoul256.vim'
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

call plug#end()

" light line colorscheme
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \}

" Seoul theme settings
let g:seoul256_background = 236
colo seoul256

"Keymap for NERDtree
map <C-n> :NERDTreeToggle<CR>
