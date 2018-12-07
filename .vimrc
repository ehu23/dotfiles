    set nocompatible "to be safe
    "
    "********UI CONFIG*********
    "
    syntax on

    colorscheme Tomorrow-Night "change color scheme

    set showcmd "show last command entered in bottom right

    set cursorline "highlight current line

    filetype plugin indent on "turn on filetype detection. load filetype-specific indent & plugin files

    set wildmenu "visual autocomplete for command menu

    set showmatch "highlight matching [, {, or (

    set number "line numbers

    set linebreak "avoid wrapping a line in the middle of a word

    set title "titles current edited file

    set laststatus=2 "always see the status bar

    set ruler "shows current line number at bottom right of screen

    "
    "********SPECIFIC KEYS*********
    "
    set backspace=indent,eol,start "proper backspace behavior - deletes newlines, auto indents, or where insert mode starts

    set autoindent "copy indentation from previous line when starting a new line

    "uses spaces instead of the tab character, setting it to 4 space characters
    set expandtab
    set shiftwidth=4
    set softtabstop=4

    "use jk to get out of insert mode
    inoremap jk <Esc>

    "
    "********SEARCHING**********
    "
    set incsearch "searches 'incrementally'

    set hlsearch "highlight search matches

    set ignorecase "ignores case when searching

    "
    "********PERFORMANCE*************
    "
    set lazyredraw "buffers redraw to decrease lag

    "
    "************MISC********************
    "
    set confirm "display confirmation dialoa when closing unsaved files

    set history=100 "increase undo limit

    set modelines=0 "vulnerability fix

    set encoding=utf-8 "sets encoding

    set hidden "hides unsaved buffers instead of closing them
    
" 
"***********LEADER*************
"
    let mapleader = " " "set leader key
    map <C-n> :NERDTreeToggle<CR>
"
"**********PLUGINS*******************
""

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1

let g:ctrlp_working_path_mode = 'ar'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:jsx_ext_required = 0

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL


let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ }
