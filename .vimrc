set nocompatible              " be iMproved, required
filetype off                  " required
" ============================================

" ============================================
" VUNDLE PLUGINS
" ============================================
" Test to see if this changes the linked file on the other side
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ADD PLUGINS HERE
" ============================================
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'https://github.com/tkhren/vim-fake'
Plugin 'https://github.com/907th/vim-auto-save'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
"
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" VUNDLE HELP
" ============================================
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ============================================

" ============================================
" BASIC VIM SETTINGS
" ============================================
"Copy indent from current line when starting a new line(typing <CR> in Insert mode or when using the "o" or "O" command) 
set autoindent  

"Expand tabs into spaces
set expandtab

"Need to set tabstop and shiftwidth to 2 in conjunction with expandtab (default tabstop is 8!)
set tabstop=2
set shiftwidth=2

" set colorcolumn=90    " setting end point

set hlsearch            " highlight matches; turn off with :nohlsearch when done searching 
set incsearch           " search as characters are entered
set linebreak           " set linebreak on so that full words are wrapped
set laststatus=2        " set the title of the vim window to show the filename
set ttyfast             " helps with screen redraws smoothness
set title               " set the title of the window to be the name of the file
" ============================================

" ============================================
" ADVANCED VIM SETTINGS
" ============================================
" Plugin Configurations 
let g:auto_save = 1  " enable AutoSave on Vim startup
au BufReadPost *.ejs set filetype=html "mark my ejs as html to enable sparkup

" Config to be able to yank and paste from Vim
set clipboard=unnamed

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" This option if uncommented will remove parens matching 
" let g:loaded_matchparen=1
" ============================================

" ============================================
" SET INTIAL SETTINGS
" ============================================
set number
set relativenumber
set spell

" ============================================
" LEADER KEY 'H' SHORTCUTS
" ============================================
" Set leader to comma
let mapleader = "H"

" Toggle highlighting of search results
nnoremap <leader><space> :nohlsearch<cr>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" Toggle Hybrid Line Numbers
nnoremap <leader>m :set number! relativenumber!<cr>

" Automatic Spell Correction
nnoremap <leader>s 1z=
" ============================================

" ============================================
" ABBREVIATIONS (TEXTEXPANDERS)
" ============================================

" +++ HTML +++
iab br <BR>

" +++ EJS +++
iab {{ ({<CR><CR>})<Up><Left><TAB>
iab ejs <% %><Left><Left><Left>
iab eja <%= %><Left><Left><Left>

" +++ JAVA +++
iab sout System.out.println();<Left><Left>
iab sprt System.out.print();<Left><Left>
iab impscn import java.util.Scanner;
iab newscn Scanner input = new Scanner(System.in);
iab scninp [TYPE] name = input.next();
iab jvamn 
\<CR>public class [CLASSNAME] {
\<CR><Space><Space>public static void main(String [] args) {
\<CR>
\<CR><Space><Space><Space><Space>System.out.println( "Hello Borld!" );
\<CR>
\<CR><C-]>}
\<CR>}
" ============================================

" ============================================
" MAKING VIM PRETTY
" ============================================
colorscheme relaxedgreen
syntax on

" CURSOR SHAPE CHANGE IN DIFFERENT MODES
" ============================================
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" ============================================
