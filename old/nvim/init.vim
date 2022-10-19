" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing init.vim
" It must be the first instruction.
set nocompatible

" ----------------------------------------------------------------------------------------

"Plugins
filetype off                  " required

call plug#begin("~/.config/nvim/bundle")

" Semantic language support
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'deoplete-plugins/deoplete-jedi'

" NeoMake
" Plug 'neomake/neomake'

" Fuzzy finder
" Plug 'airblade/vim-rooter'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Targets
" Plug 'wellle/targets.vim'

" Surround
" Plug 'tpope/vim-surround'

" Highlight Yanked Text
Plug 'machakann/vim-highlightedyank'

" Commentary
Plug 'tpope/vim-commentary'

" GitGutter
Plug 'airblade/vim-gitgutter'

" Rainbow
Plug 'luochen1990/rainbow'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'dag/vim-fish'

call plug#end()            " required

" ----------------------------------------------------------------------------------------

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" ----------------------------------------------------------------------------------------

" Colors and Syntax
colorscheme hybrid					" select color scheme
set background=dark					" dark background for console
syntax enable           			" enable syntax processing

" ----------------------------------------------------------------------------------------

" Spaces and Tabs
set autoindent			" Autoindent
set noexpandtab			" Use hard tabs
set tabstop=4			" number of visual spaces per TAB
set shiftwidth=4		" number of spaces in autoindent

" ----------------------------------------------------------------------------------------

" Folding
set foldmethod=syntax
set nofoldenable
set foldnestmax=3

" ----------------------------------------------------------------------------------------

" UI Configuration
set number              	" Show line numbers
set relativenumber			" Show relative number
set showcmd             	" Show command in bottom bar
set cursorline          	" Highlight current line

set ruler					" Display the cursor position on the last line of the screen
set wildmenu            	" Visual autocomplete for command men
set showmatch           	" highlight matching [{()}]
set showmode				" Show insert/replace/visual mode

set nowrap					" Do not wrap lines

set wildmenu				" Decent wildmenu
set wildmode=list:longest	" Decent wildmenu
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

" ----------------------------------------------------------------------------------------

" Encoding
set encoding=utf-8		" encoding used for displaying file
set fileencoding=utf-8	" encoding used when saving file

" ----------------------------------------------------------------------------------------

" Searching
set ignorecase			" Use case insensitive search, except when using capital letters
set smartcase
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set inccommand=nosplit	" Show the operation to be executed in :

" ----------------------------------------------------------------------------------------

" Sane Remaps

" Search
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" Move in line with home keys
map H ^
map L $

" No arrow keys
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Left and right can switch buffers
nnoremap <Left> gt
nnoremap <Right> gT

" ----------------------------------------------------------------------------------------

" Misc
set mouse=a							" Enable use of the mouse for all modes
set confirm							" raise a dialogue asking if you wish to save changed files
set nobackup						" Donot keep a file~ as a backup
set undodir=~/.config/nvim/vimdid	" Undo after closing file
set undofile						" Undo after closing file

" ----------------------------------------------------------------------------------------

" Plugins configurations

" Deoplete.
" let g:deoplete#enable_at_startup = 1
" inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NeoMake
" call neomake#configure#automake('nw', 750)

" Rainbow
let g:rainbow_active = 1

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" ----------------------------------------------------------------------------------------

" General Key Mappings
if has("autocmd")
	autocmd FileType python 	so ~/.config/nvim/shortcuts/python.vim			"  Python shortcuts
	autocmd FileType go 		so ~/.config/nvim/shortcuts/go.vim				"  Go shortcuts
	autocmd FileType lisp 		so ~/.config/nvim/shortcuts/clisp.vim			"  CLISP shortcuts
	autocmd FileType clojure 	so ~/.config/nvim/shortcuts/clojure.vim			"  Clojure shortcuts
	autocmd FileType rust 		so ~/.config/nvim/shortcuts/rust.vim			"  Rust shortcuts
endif

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a
