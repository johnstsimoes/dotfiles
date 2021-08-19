set number                    " nonumber to hide
set incsearch
set hlsearch
set tabstop=4
set expandtab                 " tabs are spaces
set autoindent
set shiftwidth=4              " indent 4 spaces
set ignorecase                " case insensitive search
set smartcase
set encoding=utf-8
set fileencoding=utf-8
set mouse=nicr
set directory^=$HOME/.vim/tmp//
set clipboard=unnamedplus

" =============================================================================
" COLOURS

set t_Co=256                  " enable 256-colors
colorscheme zenburn

" =============================================================================
" KEYBOARD MAPPINGS

map <C-N><C-N> :NERDTreeToggle<CR>

nmap <leader>l :set list!<CR>
nmap <leader>n :set relativenumber!<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" =============================================================================
" CUSTOMIZE PLUGINS

let g:ctrlp_custom_ignore = {
  \ 'dir':  'git\|node_modules\|coverage\|vendor\|tmp\|build\',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let NERDTreeIgnore = ['node_modules$']
let NERDTreeShowHidden=0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "❌"
let g:syntastic_warning_symbol = "⚠️"
let g:syntastic_loc_list_height = 5

" =============================================================================
" MISC
" -----------------
call matchadd('ColorColumn', '\%81v', 100)
execute pathogen#infect()
syntax on

autocmd FileType cpp set tabstop=4|setlocal commentstring=#\ %s
