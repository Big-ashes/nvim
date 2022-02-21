"
"
"    ____  _                       _     
"   | __ )(_) __ _        __ _ ___| |__  
"   |  _ \| |/ _` |_____ / _` / __| '_ \ 
"   | |_) | | (_| |_____| (_| \__ \ | | |
"   |____/|_|\__, |      \__,_|___/_| |_|
"            |___/                       
"               _                            __ 
"    _ ____   _(_)_ __ ___   ___ ___  _ __  / _|
"   | '_ \ \ / / | '_ ` _ \ / __/ _ \| '_ \| |_ 
"   | | | \ V /| | | | | | | (_| (_) | | | |  _|
"   |_| |_|\_/ |_|_| |_| |_|\___\___/|_| |_|_|  
"                                            
                                            
"============================
"===== Big-ash nvimconf =====
"============================



set number
set relativenumber
set wrap
set showcmd
set hlsearch
set incsearch
set notimeout
set smartcase
set wildmenu
set wildmode=longest:list,full
set ignorecase
exec "nohlsearch"

syntax on


"===== coding setting ====="
set foldmethod=indent


"===== file setting ====="
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


"===== file edit ====="
map tx :r !figlet
"you need install figlet"

"===== Hotkey setting ====="
noremap u k
noremap k l
noremap l u


"===== split window ====="
map sh :set splitright<CR>:vsplit<CR>
map sk :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <C-up> :res +5<CR>
map <C-down> :res -5<CR>
map <C-left> :certical resize +5<CR>
map <C-right> :vertical resize -5<CR>
"Press Ctrl W and hjkl to switch window,:e to open auother file"


let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-clangd']



"==========================
"===== plugins  begin =====
"==========================
call plug#begin('$HOME/.config/nvim/plugged')
"file-tree and booksmark"
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
"my-coding-plugs"
Plug 'neoclide/coc.nvim',{'bracnch':'release'}
Plug 'connorholyday/vim-snazzy'

call plug#end()
map <silent> <C-e> :NERDTreeToggle<CR>


"===== themes ====="
let g:SnazzyTransparent = 1
color snazzy

