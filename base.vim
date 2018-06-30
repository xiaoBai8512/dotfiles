set encoding=UTF-8
filetype off
set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim/
call plug#begin('~/.vim/vim-plug-plugins')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'posva/vim-vue'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ternjs/tern_for_vim'
Plug 'prettier/vim-prettier'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'Valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'raimondi/delimitmate'
Plug 'moll/vim-node'
Plug 'othree/html5.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'chemzqm/wxapp.vim'
Plug 'fatih/vim-go'
Plug 'vim-python/python-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'ryanoasis/vim-devicons'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-bufferline'
Plug 'tell-k/vim-autopep8'
Plug 'valloric/youcompleteme'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-expand-region'
Plug 'yuttie/comfortable-motion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }
call plug#end()
autocmd BufEnter * :syntax sync fromstart
autocmd FileType python set equalprg=autopep8\ -
au VimEnter * NERDTree
let g:ctrlp_by_filename = 1
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'wxml': 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\ 'jinja' : 1,
			\ 'javascript.jsx': 1
			\}
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Webdevicons_enable_airline_tabline = 1
let g:Webdevicons_enable_airline_statusline = 1
let g:Webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:Webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
filetype plugin indent on
syntax on
" colorscheme onedark
set nocompatible
set laststatus=2
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*
set number
set backspace=indent,eol,start
set completeopt=menu
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autowrite
inoremap <C-l> <Esc>o
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I