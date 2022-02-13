"==========================
"===== Big-ash Neovim =====
"==========================

set number
set relativenumber
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set notimeout
set smartcase

syntax on




noremap u k
noremap k l
noremap l u


exec "nohlsearch"

let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ['coc-json','coc-vimlsp']

"==========================
"===== plugins  begin =====
"==========================
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim',{'bracnch':'release'}

call plug#end()
map <silent> <C-e> :NERDTreeToggle<CR>
