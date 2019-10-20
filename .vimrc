set nocompatible              " be iMproved, required
filetype off                  " required

" Test to see if this changes the linked file on the other side
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" 
" plugin on GitHub repo
"-> Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"-> Plugin 'L9'
"
" Git plugin not hosted on GitHub
"-> Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
"-> Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"-> Plugin 'ascenator/L9', {'name': 'newL9'}

" I'm going to put my plugins here:
" ============================================
Plugin 'https://github.com/907th/vim-auto-save'
Plugin 'https://github.com/tkhren/vim-fake'
Plugin 'Yggdroot/indentLine'
" Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" ============================================

" Set leader key to H
let mapleader = "H"

" Toggle highlighting of search results
nnoremap <leader><space> :nohlsearch<cr>

" Automatic Spell Correction
nnoremap <leader><s> !z=

set ttyfast " helps with screen redraws smoothness
set title   " set the title of the window to be the name of the file

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Copy indent from current line when starting a new line(typing <CR> in Insert mode or when using the "o" or "O" command) 
set autoindent  

"Expand tabs into spaces
set expandtab

"Need to set tabstop and shiftwidth to 2 in conjunction with expandtab (default tabstop is 8!)
set tabstop=2
set shiftwidth=2

"Setting smartindent to indent after '{' or if,else,while,do,for,switch 
"set smartindent 
" i may not need smart indent for javascript?
" I also want to configure a thing that when I put a parenthesis or bracket or anything it will always do the matching on and then move back in between them

colorscheme relaxedgreen
syntax on

set colorcolumn=90   " setting end point

set hlsearch            " highlight matches; turn off with :nohlsearch when done searching 
set incsearch           " search as characters are entered
set linebreak           " set linebreak on so that full words are wrapped

" Plugin Configurations 
let g:auto_save = 1  " enable AutoSave on Vim startup
au BufReadPost *.ejs set filetype=html "mark my ejs as html to enable sparkup

" Config to be able to yank and paste from Vim
set clipboard=unnamed

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" This option if uncommented will remove parens matching 
" let g:loaded_matchparen=1

" Abbreviations (TextExpanders)
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


" Cursor shape change in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
