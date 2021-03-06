call pathogen#infect()

"Use vim, not vi defaults
set nocompatible
"Show line numbers
set number
"Show line and column numbers
set ruler
"Set default encoding to UTF8
set encoding=utf-8
"Don't wrap lines
set nowrap
"Make tabs two spaces
set tabstop=2
"Make auto indent two spaces
set shiftwidth=2
"Use spaces not tabs
set expandtab
"Show invisible characters
set list
"Show lines matching brackets/parens
set showmatch
"Show color column at 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
"Auto indent files
filetype indent on

"Colors
set background=dark
let g:solarized_termcolors= 256
let g:solarized_termtrans = 1
let g:solarized_degrade = 1
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"
colorscheme solarized

"Turn on syntax highlighting allowing local overrides
syntax enable

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  "
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>
set listchars+=precedes:<

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

"Setup searching files to leader s
map <leader>s :CtrlP<CR>

"Make NERDTree toggle window with leader n
map <leader>n :NERDTreeToggle<CR>
"Make NERDTree auto open on vim opening
autocmd vimenter * NERDTree
"Make NERDTree auto close when it is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Setup macvim to use command / to comment out the line
if has("gui_macvim") && has("gui_running")
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
endif

"Remove gui toolbar
if has('gui_running')
  set guioptions-=T
endif

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript

" Syntastic Configuration
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let g:syntastic_auto_loc_list=2
