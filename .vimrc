let mapleader=","
execute pathogen#infect()

"Add pathogen
syntax on
filetype plugin indent on
color slate

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
imap <leader>c <ESC>:%d<CR><CR><LF>

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

set tabstop=4
set shiftwidth=4
set expandtab

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

"Add YCM-config
let g:ycm_global_ycm_extra_conf = "~/.vim/conf/.ycm_extra_conf.py"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"Add syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

"Add custom aliases
command Ccpp w | !clear && g++ % -o %:r && ./%:r
command Cc w | !clear && gcc % -o %:r && ./%:r
command Cpy w | !clear && python %
command Cpy3 w | !clear && python3 %
command Csh w | !clear && chmod +x % && ./%
