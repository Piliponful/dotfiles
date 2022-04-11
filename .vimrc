set backspace=indent,eol,start

call plug#begin()

Plug 'neovimhaskell/haskell-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'justb3a/vim-remove'


call plug#end()

filetype plugin indent on

syntax on
colorscheme onedark

set encoding=UTF-8

set expandtab ts=2 sw=2 ai
set listchars=space:· list
set clipboard=unnamedplus

" show status bar always
set laststatus=2

" show relative line numbers and actual line number for current
set relativenumber
set number

map <C-f> :Rg<CR>
map <C-p> :Files<CR>
map <Leader>r :Remove!<CR>
nmap <Leader>f :call fzf#vim#ag(expand('<cword>'))<CR>

let g:lightline = {'colorscheme': 'onedark'}

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
