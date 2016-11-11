let mapleader="<"
execute pathogen#infect()                      

"Add pathogen
syntax on
filetype plugin indent on
colorscheme monokai

set encoding=utf-8
set nu
set rnu
set ic
set title
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set t_Co=256
set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatslineFlag()}
set statusline+=%*

"Add Leader-Mappings"
imap <leader>[ []<ESC>i
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
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
let g:airline#extensions#tabline#enabled=1

"Add visuals
set cursorline
set ruler

"Add NERDTree-mappings
no <down> ddp
no <up> ddkP
map <C-l> :tabnext<CR>
map <C-t> :tabnew<CR>
map <C-h> :tabprevious<CR>
map! <C-l> <ESC>:tabnext<CR>
map! <C-t> <ESC>:tabnew<CR>
map! <C-h> <ESC>:tabprevious<CR>

" Compiler-Mappings
command Ccpp w | !clear && g++ % -o %:r && ./%:r
command Cc w | !clear && gcc % -o %:r && ./%:r
command Cpy w | !clear && python %
command Csh w | !clear && chmod +x % && ./%
command Cjava w | !clear && javac % && java %:r

autocmd FileType cpp map <F3> :Ccpp<CR>
autocmd FileType c map <F3> :Cc<CR>
autocmd FileType python map <F3> :Cpy<CR>
autocmd FileType sh map <F3> :Csh<CR>
autocmd FileType java map <F3> :Cjava<CR>
"
" Latex-Mappings
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
