set encoding=utf-8
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'othree/html5.vim'
Plugin 'godlygeek/tabular'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/csapprox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'dsawardekar/ember.vim'
Plugin 'joukevandermaas/vim-ember-hbs'
call vundle#end()

filetype plugin indent on
syntax enable

colorscheme flattr

" OSX Font
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

set cursorline
set cursorcolumn

set incsearch
set ignorecase
set smartcase
set autochdir

set scrolloff=10
set wrap
set lazyredraw
set number
set numberwidth=4

set hlsearch

set laststatus=2
set hidden
set splitbelow
set splitright

set showcmd
set noshowmode
set ruler
set visualbell

set backspace=start,eol,indent
set showmatch
set matchtime=4

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set nowritebackup
set nobackup
set autoread
set noswapfile
set history=100
set hidden

" Space as leader
map <space> <leader>

" Window Buffer Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ctrl C + Ctrl V
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Multi Cursors Mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" RSpec terminal
let g:rspec_runner = "os_x_iterm2"
"let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" Remove Bars
set guioptions-=T
set guioptions-=t
set guioptions-=L
set guioptions-=l
set guioptions-=m
set guioptions-=r

" Clean search
nmap \hl :nohlsearch<CR>
nmap <leader>hl :nohlsearch<CR>

" Open a new empty buffer
nmap <leader>N :enew<cr>

" Move to the next buffer
nmap <leader>n :bnext<CR>

" Move to the previous buffer
nmap <leader>p :bprevious<CR>

" Move to the previous buffer
nmap <leader>D :bdelete<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Toggle NERDTree
nmap <silent> <Leader>nt :NERDTreeToggle<CR>

" Toggle Tagbar
nmap <silent> <Leader>tt :TagbarToggle<CR>

" Disable go auto format and show errors
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0

" Remove all trailing whitespaces at save
autocmd BufWritePre * :%s/\s\+$//e

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" REPL
nmap <silent> <Leader>E :Eval<CR>
nmap <silent> <Leader>R :Require!<CR>

let g:jsx_ext_required = 0

set term=screen-256color

set wildignore+=**/node_modules,**/bower_components,**/tmp,**/vendor,**/git

let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor']
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|vendor\|DS_Store\|git'
