execute plug#begin()
" Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
execute plug#end()

set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11

syntax on
filetype plugin indent on

set completeopt-=preview
set encoding=UTF-8
set nu
set ic
set title
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set shortmess+=I
set clipboard=unnamed
set cursorline
hi CursorLine gui=underline cterm=underline
set backspace=indent,eol,start

let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_lint_on_fly = 1
let g:pymod_python = "python3"
let g:pymode_breakpoint_bind = '<C-b>'
let g:pymode_breakpoint_cmd = 'import pudb; pudb.set_trace() # BREAKPOINT'

"vim-airline
set laststatus=2
set t_Co=256
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let NERDTreeShowHidden = 0
let g:NERDTreeDirArrowExpandable='▶'
let g:NERDTreeDirArrowCollapsible='▼'
autocmd FileType nerdtree setlocal nolist

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" vim-devicons
let g:airline_powerline_fonts = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" YouCompleteMe
let g:ycm_server_python_interpreter = "/usr/bin/python3"

" Tablist
let Tlist_Use_Right_Window = 1


color monokai

let mapleader="<"
"Add Leader-Mappings"
imap <leader>[ []<ESC>i
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>{ <CR>{<CR>}<ESC>O
imap <leader>c <ESC>:%d<CR><CR><LF>
map <leader>f <ESC>:Files<CR>
map <leader>vv <ESC>:vnew<CR>
map <leader>hh <ESC>:new<CR>
map <leader>ss <ESC>ysiw
map <leader>tt <ESC>:Tab /
map <leader>s <ESC>ysiw

map <F9> <ESC>:Tlist<CR>
map <F10> <ESC>:NERDTreeToggle<CR>

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

" Compiler-Mappings
autocmd FileType cpp map <F3> :Ccpp<CR>
autocmd FileType c map <F3> :Cc<CR>
autocmd FileType python map <F3> :Cpy<CR>
autocmd FileType sh map <F3> :Csh<CR>
autocmd FileType java map <F3> :Cjava<CR>
autocmd FileType javascript map <F3> :Cjs<CR>

command Ccpp w | !clear && g++ % -o %:r && ./%:r
command Cc w | !clear && gcc % -o %:r && ./%:r
command Cpy w | !clear && python %
command Csh w | !clear && chmod +x % && ./%
command Cjs w | !clear && node %
command Cjava w | !clear && javac % && java %:r

" Latex-Mappings
let g:tex_flavor="latex"

autocmd FileType tex imap <leader>it \begin{itemize}<CR>\item <CR>\end{itemize}<ESC>k$i<SPACE>
autocmd FileType tex imap <leader>en \begin{enumerate}<CR>\item <CR>\end{enumerate}<ESC>k$i<SPACE>
autocmd FileType tex imap <leader>sf \begin{subfigure}[b]{0.25\textwidth}<CR>\caption{~}<CR>\label{fig:}<CR>\end{subfigure}<ESC>kkO
autocmd FileType tex imap <leader>fi \begin{figure}<CR>\caption{cap}<CR>\label{fig:}<CR>\end{figure}<ESC>
autocmd FileType tex imap <leader>gr \includegraphics[width=\textwidth]{x}<ESC>ci{
autocmd FileType tex imap <leader>ch \caption{x}<ESC>ci{ 
autocmd FileType tex imap <leader>tb \begin{tabular}{orientation}<CR>\hline<CR>1 && 2 && 3 \\ <CR>\hline<CR>\end{tabular}<ESC>
autocmd FileType tex imap <leader>fr \begin{frame}{title}<CR>\end{frame}<ESC>O

autocmd FileType tex imap <leader>al \begin{algorithm}[ht]<CR>\begin{algorithmic}<CR>\Require<CR>\Ensure<CR> <CR>\end{algorithmic}<CR>\caption{Caption}<CR>\label{alg:}<CR>\end{algorithm}<ESC>
autocmd FileType tex imap <leader>fu \Function{name}{d}<CR>\EndFunction<ESC>O<TAB>
autocmd FileType tex imap <leader>if \If{condition}<CR>\EndIf<ESC>O<TAB>
autocmd FileType tex imap <leader>var \State<CR><ESC>k$a<SPACE>
autocmd FileType tex imap <leader>wh \While{condition}<CR>\EndWhile<ESC>O<TAB>
autocmd FileType tex imap <leader>for \For{condition}<CR>\EndFor<ESC>O<TAB>

"python mapping
autocmd FileType python imap <leader>cl class A:<CR>def __init__(self):<CR>pass<CR><ESC>
autocmd FileType python imap <leader>cfu def clsfunc(self):<CR>pass<CR><ESC>
autocmd FileType python imap <leader>fu def func():<CR>pass<CR><ESC>
autocmd FileType python imap <leader>ma def main():<CR>print("Hello, World!")<CR><CR><ESC><<Iif __name__ == "__main__":<CR>main()<CR><ESC>
autocmd FileType python imap <leader>1pv print("{}".format(x))<ESC>hci(
autocmd FileType python imap <leader>2pv print("{},{}".format(x))<ESC>hci(
autocmd FileType python imap <leader>3pv print("{},{},{}".format(x))<ESC>hci(

"sh mapping
autocmd FileType sh imap <leader>u if [ $USER != "" ]; then<CR>echo "This script must be run as: user"<CR>echo "Script started as: $USER"<CR>exit 1<CR>fi<CR><ESC>

