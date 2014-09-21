syntax on
set nocompatible

" Set tab width to 2 spaces and backspace
set tabstop=2 shiftwidth=2 expandtab
set backspace=2

" Set the color scheme
set background=dark
colorscheme Tomorrow-Night-Eighties

" Set linenumbers
set nu

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Define bundles via Github repos
Plugin 'christoomey/vim-run-interactive'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/matchit'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'wting/rust.vim'

call vundle#end()
filetype on

" Setup some key mappings
map <C-l> :NERDTreeToggle<CR>
nnoremap <Leader>ri :RunInInteractiveShell<space>
