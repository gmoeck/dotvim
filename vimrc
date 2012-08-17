call pathogen#infect()

"Use vim, not vi defaults
set nocompatible
"Show line numbers
set number
"Show line and column numbers
set ruler
"Set default encoding to UTF8
set encoding=utf-8 
"Turn on syntax highlighting allowing local overrides
syntax enable
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

"Make NERDTree toggle window with leader n
map <leader>n :NERDTreeToggle<CR>
"Make NERDTree auto open on vim opening
autocmd vimenter * NERDTree
"Make NERDTree auto close when it is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Setup macvim to use command / to comment out the line
if has("gui_macvim") && has("gui_running")
  map <D-/> <plug>NERDCommenterComment
endif

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript
