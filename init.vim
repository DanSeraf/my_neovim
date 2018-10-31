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
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" async completion
Plug 'Shougo/deoplete.nvim'
" denite features
Plug 'Shougo/denite.nvim'

call plug#end()

" light line colorscheme
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \}

" Seoul theme settings
let g:seoul256_srgb = 1
let g:seoul256_background = 234
colo seoul256

" enable deoplete at startup
let g:deoplete#enable_at_startup = 1

"Keymap for NERDtree
map <C-up> :NERDTreeToggle<CR>
