set  nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'bling/vim-airline'
Bundle 'AutoClose'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

"NERDTree config
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

"tagbar"
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

"minibufexp"
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

"airline"
set laststatus=2
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"ycm
set completeopt=longest,menu
let mapleader=','
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-b>'
let g:ycm_seed_identifiers_with_syntax = 1
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"solarized
colorscheme solarized
let g:solarized_termcolors=256

set nu
set ts=4
set expandtab
set mouse=a
set t_Co=256
set cursorline
set cursorcolumn
set hlsearch
"set background=light
""set list          " Display unprintable characters f12 - switches
""set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
