call pathogen#infect()

syntax on
filetype plugin indent on

"Make NERDTree auto open on vim opening
autocmd vimenter * NERDTree
"Make NERDTree auto close when it is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
