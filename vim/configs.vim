"" Themes
colorscheme onedark
hi Comment cterm=italic
hi NonText guifg=bg
set background=dark
set guifont=SauceCodePro\ Nerd\ Font:h12
set guioptions=ai
set laststatus=2
set t_Co=256
set termguicolors
syntax enable
syntax on

"" Plugins

" YouCompleteMe
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_path_to_python_interpreter = "/usr/local/bin/python"

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnipates
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" AlwaysMathTags
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'javascript.jsx': 1,
			\ 'jinja' : 1,
			\ 'vue': 1,
			\ 'wxml': 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\}

" VimFiler
call vimfiler#custom#profile('default', 'context', {
			\ 'auto_cd' : 1,
			\ 'auto_expand' : 1,
			\ 'direction' : 'rightbelow',
			\ 'explorer' : 1,
			\ 'explorer_columns' : 'filetypeicon:gitstatus',
			\ 'force_hide' : 0,
			\ 'hidden': 1,
			\ 'no_quit' : 1,
			\ 'parent': 0,
			\ 'safe' : 0,
			\ 'split' : 1,
			\ 'status' : 1,
			\ 'toggle' : 1,
			\ 'winminwidth' : 30,
			\ 'winwidth' : 30,
			\ })
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_direction = 'rightbelow'
let g:vimfiler_marked_file_icon = '√'
let g:vimfiler_readonly_file_icon = '*'
let g:vimfiler_restore_alternate_file = 1
let g:vimfiler_tree_closed_icon = '▷'
let g:vimfiler_tree_indentation = 1
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▼'

" TagBar
let g:tagbar_compact = 1
let g:tagbar_left = 1

"" Vim settings
filetype plugin indent on
set autoindent
set autowrite
set completeopt=menu
set hidden
set hlsearch
set laststatus=2
set mouse=a
set nobackup
set nocompatible
set nocursorline
set noerrorbells
set number
set relativenumber
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2
set vb t_vb=
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*
