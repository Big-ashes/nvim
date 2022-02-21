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

"======= coc config ======="
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-clangd']

" TextEdit might fail if hidden is not set.
set hidden
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



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

