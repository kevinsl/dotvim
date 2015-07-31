" UI
"set guifont="Inconsolata for Powerline":h24
colorscheme darkblue


au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /Users/kevin/.vim/ftplugin/json.vim

au BufRead,BufNewFile todo.txt set filetype=todo
au! Syntax todo source /Users/kevin/.vim/todo.vim

" pathogen
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" nerdtree
let NERDTreeIgnore=['\.pyc$']

" keymaps
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-S-Left> :bp<CR>
nmap <C-S-Right> :bn<CR>

" airline config
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Misc
set ts=8 sw=4 softtabstop=4
set hlsearch
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set nu
