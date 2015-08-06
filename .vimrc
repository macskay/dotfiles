let mapleader=","
execute pathogen#infect()
"Add pathogen
syntax on
filetype plugin indent on

"Unmap arrow keys for normal mode"
no <down> ddp
no <left> <Nop>
no <up> ddkP
no <right> <Nop>

"Unmap arrow keys for insert mode"
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

"Unmap arrow keys for visual mode"
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"Add line numbers"
set nu

"Add command field"
set showcmd

"Add Leader-Mappings"
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ <CR>{<CR>}<ESC>O

"Add auto-centering of lines
nmap n nzz
nmap N Nzz

"Add Tab-Mappings"
nmap <C-l> :tabnext<CR>
nmap <C-t> :tabnew<CR>
nmap <C-h> :tabprevious<CR>

imap <C-l> <ESC>:tabnext<CR>
imap <C-t> <ESC>:tabnew<CR>
imap <C-h> <ESC>:tabprevious<CR>

vmap <C-l> :tabnext<CR>
vmap <C-t> :tabnew<CR>
vmap <C-h> :tabprevious<CR>

"Add airline-configs
set laststatus=2
set t_Co=256
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1

"Add easy-motion"
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

"Add visuals
set cursorline
set ruler

"Add NERDTree-mappings
map <F10> :NERDTreeToggle<CR>
map <F9> :NERDTreeFind<CR>

