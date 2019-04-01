let mapleader=","       " leader is comma

execute pathogen#infect()
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
colorscheme Monokai
imap jk <Esc>
imap kj <Esc>
imap º <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
""set number
set showcmd
set cursorline
""set cursorcolumn
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap j gj
nnoremap k gk
"nnoremap gV `[v`]
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>

nnoremap <leader>m :w<CR>
nnoremap <leader>t :terminal<CR> <C-W>k :resize +10<CR>
nnoremap <leader>f :NERDTreeToggle<CR> <C-W>l
nnoremap <leader>c :TagbarToggle<CR> <C-W>l
nnoremap <leader>t0 :setl noai nocin nosi inde=<CR>
nnoremap <leader>t1 :setl ai cin si inde=4<CR>


" Splits
set splitbelow
set splitright

" Backup settings
set backup
set backupdir=~/.vim-tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp
set writebackup

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set mouse =
set mouse =""
