" Based on Ross Noble's dotfiles
" https://github.com/rossnoble/dotfiles

set number                    " nonumber to hide
set incsearch
set hlsearch
set tabstop=2
set expandtab                 " tabs are spaces
set autoindent
set shiftwidth=2              " indent 2 spaces
set ignorecase                " case insensitive search
set smartcase
set encoding=utf-8
set fileencoding=utf-8
set mouse=nicr

" =============================================================================
" COLOURS
" -----------------
set t_Co=256                  " enable 256-colors
colorscheme zenburn

" =============================================================================
" KEYBOARD MAPPINGS
" -----------------
map <C-N><C-N> :NERDTreeToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" =============================================================================
" LEADER MAPPINGS
nmap <leader>l :set list!<CR>
nmap <leader>n :set relativenumber!<CR>
" =============================================================================
" CUSTOMIZE PLUGINS
" -----------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  'git\|node_modules\|coverage\|vendor\|tmp\|build\',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let NERDTreeIgnore = ['node_modules$']
let NERDTreeShowHidden=0

" =============================================================================
" MISC
" -----------------
call matchadd('ColorColumn', '\%81v', 100)
execute pathogen#infect()
syntax on

