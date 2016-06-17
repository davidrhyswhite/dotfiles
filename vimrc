syntax on
filetype off

set nocompatible
" Set tab width to 2 spaces and backspace
set tabstop=2 shiftwidth=2 expandtab
set backspace=2

" Indentation
set autoindent
set smartindent


" Set the color scheme
set background=dark
colorscheme Tomorrow-Night-Eighties

" Set linenumbers
set nu
set noswapfile

" Set split regions
set splitright
set splitbelow

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
Plugin 'vim-ruby/vim-ruby'
Plugin 'tmhedberg/matchit'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'

call vundle#end()

filetype on
filetype plugin on

let g:ctrlp_show_hidden = 1
let g:multi_cursor_use_default_mapping = 0
let g:netrw_liststyle=3
let g:jsx_ext_required = 0 " Allow JSX in JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:netrw_list_hide= '.*\.DS_Store$'

" Setup syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Setup some key mappings
command Q q!
command W w
command Wq wq
nnoremap <Leader>ri :RunInInteractiveShell<space>
map <C-t> :NERDTreeToggle<CR>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
