set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'slim-template/vim-slim.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'chriskempson/base16-vim'
"Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable matchit plugin, included with Vim but not enabled
" See Practical Vim tip 54. Allows % jumps between keywords.
runtime macros/matchit.vim
MatchDebug
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
"
" Put your non-Plugin stuff after this line
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set showmatch
set incsearch
set expandtab
set hls
set ignorecase
set smartcase	"case sensitive when search string is mixed case
"colorscheme molokai   "needs molakai.vim colorscheme file
"colorscheme Tomorrow-Night   "needs Tomorrow-Night.vim colorscheme file
set background=dark
colorscheme base16-default   "needs base16-vim plugin, colors from iterm2 theme, changes here are useless
set clipboard=unnamed
set laststatus=2
syntax on

"obviously will only work if the font is on the system
if has('gui_running')
  set guifont=Ubuntu\ Mono\ derivative\ Powerline:h16
endif

"color the area wider than 100 columns differently
let &colorcolumn=join(range(101, 999), ",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

"Enable slim syntax highlighting
autocmd BufNewFile,BufRead *.slim set filetype=slim

let g:rspec_command = "!bundle exec rspec {spec}"
" Rspec.vim mappings
" <Leader> is \ by default
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Set %% to expand to active file's directory. Shortcut for %:h
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Map p3 to run Python3 on the current file
nmap p3 :w<CR>:!python3 %<CR>

" Map pdf to save file then run make (on default target)
" Conversion Course Makefiles will be setup so they are the default target
nmap pdf :w<CR>:!make<CR>
