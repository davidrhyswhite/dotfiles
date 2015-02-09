syntax on
filetype off

set nocompatible
" Set tab width to 2 spaces and backspace
set tabstop=2 shiftwidth=2 expandtab
set backspace=2

" Set the color scheme
set background=dark
colorscheme Tomorrow-Night-Eighties

" Set linenumbers
set nu
set noswapfile

" Common ignore files / directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git/*,*/node_modules/*,*/bower_components/*,*/dist/*
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Define bundles via Github repos
Plugin 'christoomey/vim-run-interactive'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tmhedberg/matchit'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'wting/rust.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'azakus/vim-webcomponents'

call vundle#end()

filetype on
filetype plugin on

let g:ctrlp_show_hidden = 1
let g:multi_cursor_use_default_mapping = 0

" Setup some key mappings
command Q q!
command W w
nnoremap <Leader>ri :RunInInteractiveShell<space>

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
