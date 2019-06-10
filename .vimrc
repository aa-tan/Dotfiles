call plug#begin('~/.vim/plugged')

"ayutheme
Plug 'ayu-theme/ayu-vim' 

"nerdtree
Plug 'scrooloose/nerdtree'

"Language packs
Plug 'sheerun/vim-polyglot'

Plug 'rhysd/vim-crystal'

"Indent lines
Plug 'Yggdroot/indentLine'

"Rust
Plug 'rust-lang/rust.vim'

call plug#end()

"Setting Term Color for TMUX


"Setting Ayu Theme
set termguicolors     
"let ayucolor="light"  
let ayucolor="mirage" 
"let ayucolor="dark"
colorscheme ayu

"CTRL+n for nerdtree
map <C-n> :NERDTreeToggle<CR>

"IndentLine
"let g:indentLine_char = ''
"let g:indentLine_first_char = ''
"let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_setColors = 0

"Code Formatting
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number

"Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Mouse
set mouse=a

" TMUX Background colors
set background=dark
set t_Co=256
set t_ut=

"Crystal tab formatting
autocmd Filetype crystal setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
