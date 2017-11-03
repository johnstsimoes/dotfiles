" Based on Ross Noble's dotfiles
" https://github.com/rossnoble/dotfiles

"colorscheme grb256 
set number          " nonumber to hide
"set incsearch
"set hlsearch
"set laststatus=2
set tabstop=2
set expandtab       " tabs are spaces
set autoindent
set shiftwidth=2    " indent 2 spaces
set ignorecase      " case insensitive search
set smartcase
set encoding=utf-8
set fileencoding=utf-8
let NERDTreeShowHidden=0

" KEYBOARD MAPPINGS
" -----------------
map <C-N><C-N> :NERDTreeToggle<CR>
nmap <C-L><C-L> :set list!<CR>

" IGNORE FILES
" -----------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  'git\|node_modules\|coverage\|vendor\|tmp\|build\',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let NERDTreeIgnore = ['node_modules$'] 

" 
" -----------------
call matchadd('ColorColumn', '\%81v', 100)
execute pathogen#infect()
syntax on

