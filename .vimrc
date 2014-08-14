set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set incsearch
set hls
set ignorecase
set smartcase	"case sensitive when search string is mixed case
colorscheme molokai   "needs molakai.vim colorscheme file
set clipboard=unnamed
syntax on
"obviously will only work if the font is on the system
if has('gui_running')
  set guifont=Ubuntu\ Mono\ 12
endif
"color the area wider than 120 columns differently
let &colorcolumn=join(range(121, 999), ",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
