" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tomasr/molokai'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim'
Plug 'wesQ3/vim-windowswap'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-obsession'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'craigemery/vim-autotag'
Plug 'sakhnik/nvim-gdb'
Plug 'shime/vim-livedown'
call plug#end()
" Plugin configs
" jedi
let g:jedi#use_tabs_not_buffers = 1
" Commentary
nnoremap <A-/> :Commentary<CR>
" vim-autotag ctags
let g:autotagTagFiles = ".tags"
let g:autotagStopAt = "/home/kadams/projects"
set tags=./.tags;,.tags;
" statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{ObsessionStatus()}
set statusline+=%*

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5

" deoplete 
let g:deoplete#enable_at_startup = 1

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Color scheme 
set t_Co=256
let g:rehash256 = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#stl_format_err = 1
let g:airline#extensions#tabline#show_buffers = 0
colorscheme molokai
syntax on

" For plugins to load correctly
filetype plugin indent on

" leader key (default is \
map <Space> \

" Security
set modelines=0

" Don't highlight matching braces
" ( )

let loaded_matchparen = 0
" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip
set clipboard=unnamedplus
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'
set mouse+=a



