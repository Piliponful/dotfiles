set backspace=indent,eol,start

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'
Plugin 'sgur/vim-editorconfig'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-obsession'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'

call vundle#end()

filetype plugin on
syntax on
colorscheme onedark

set shiftwidth=2
set expandtab ts=2 sw=2 ai
set listchars=space:· list
set number
set laststatus=2
set pastetoggle=<F3>
set rnu
set encoding=UTF-8
set clipboard=unnamedplus

map <C-n> :NERDTreeToggle<CR>
map <c-f> :Ag<CR>
map <c-p> :Files<CR>
map <c-g> :ALEGoToDefinition<CR>
nmap <Leader>f :call fzf#vim#ag(expand('<cword>'))<CR>
nmap ,n :NERDTreeFind<CR>

let g:lightline = {'colorscheme': 'onedark'}

let g:ale_linters = {'javascript': ['standard']}
let g:ale_fixers = {'javascript': ['standard']}

let g:ycm_autoclose_preview_window_after_completion = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let NERDTreeAutoDeleteBuffer = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
