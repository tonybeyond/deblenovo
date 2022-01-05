" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Let's add some plugins
call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer ---> using CoC explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Onedark theme
    Plug 'joshdick/onedark.vim'
    " gruvboxtheme
    Plug 'morhetz/gruvbox'
    " CoC auto stuff // Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger for file explorer
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Colorizer 
    Plug 'norcalli/nvim-colorizer.lua'
    " Rainbow
    Plug 'junegunn/rainbow_parentheses.vim'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter' 
    " Startify
    Plug 'mhinz/vim-startify'    
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Which Key
    Plug 'liuchengxu/vim-which-key' 
    " Codi (forked from 'metakirby5/codi.vim')
    Plug 'metakirby5/codi.vim'
    " Floaterm
    Plug 'voldikss/vim-floaterm' 
call plug#end()

" Auto install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

