set backspace=indent,eol,start

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leshill/vim-json'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'


call vundle#end()
filetype plugin indent on

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Indent settings
set shiftwidth=2
set expandtab ts=2 sw=2 ai
set listchars=space:· list

set laststatus=2

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

syntax on
colorscheme onedark

set pastetoggle=<F3>
