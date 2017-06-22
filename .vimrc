set nocompatible              " be iMproved, required
filetype off                  " required
set number                    " show line numbers
set laststatus=2              " allways show status line
set ruler                     " show line and col position

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Use Git allways use Git (highlights source changes)
Plugin 'airblade/vim-gitgutter'
" File tree
Plugin 'scrooloose/nerdtree'
" Git marks in NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Markdown syntax highlighting
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Solidity language (Ethereum smart contracts)
Plugin 'tomlion/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set the project directory to the Directory where Vim was started
set path=$PWD/**

" Open NERDTree every time VIM invoked
au VimEnter * NERDTree
" Show hidden files in tree
let NERDTreeShowHidden=1

" Csortcut for NERDTree = 'ne
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" Set non-printable chars visible
scriptencoding utf-8
set encoding=utf-8

set listchars+=space:·
set listchars=eol:¶,tab:»·,trail:~,extends:>,precedes:<,space:·
augroup setList
	au!
	au BufWinEnter *  set list
augroup END

" For *.sol (Solidity SmartContracts) Set tabstop=4, shiftwidth=4, expandtab
au BufEnter *.sol set sw=4 ts=4 et
