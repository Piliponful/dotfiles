set backspace=indent,eol,start

call plug#begin()

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tomtom/tcomment_vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-obsession'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on

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
map <c-f> :Rg<CR>
map <c-p> :Files<CR>
map <c-g> :ALEGoToDefinition<CR>
nmap <Leader>d :ALEDetail<CR>
nmap <Leader>f :call fzf#vim#ag(expand('<cword>'))<CR>
nmap ,n :NERDTreeFind<CR>

let g:lightline = {'colorscheme': 'onedark'}

let g:ale_linters = {'javascript': ['standard', 'eslint']}
let g:ale_fixers = {'javascript': ['standard', 'eslint']}

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
