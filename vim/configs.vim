"" Themes
colorscheme onedark
syntax on
syntax enable
set guifont=SauceCodePro\ Nerd\ Font:h12
set guioptions=ai
set t_Co=256
set termguicolors
set background=dark
set laststatus=2
hi NonText guifg=bg
hi Comment cterm=italic

"" Plugins

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_path_to_python_interpreter = "/usr/local/bin/python"

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnipates
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" AlwaysMathTags
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'wxml': 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\ 'jinja' : 1,
			\ 'javascript.jsx': 1,
			\ 'vue': 1,
			\}

" VimFiler
call vimfiler#custom#profile('default', 'context', {
			\ 'auto_cd' : 1,
			\ 'auto_expand' : 1,
			\ 'toggle' : 1,
			\ 'explorer' : 1,
			\ 'winwidth' : 30,
			\ 'winminwidth' : 30,
			\ 'direction' : 'rightbelow',
			\ 'explorer_columns' : 'filetypeicon:gitstatus',
			\ 'parent': 0,
			\ 'status' : 1,
			\ 'safe' : 0,
			\ 'split' : 1,
			\ 'hidden': 1,
			\ 'no_quit' : 1,
			\ 'force_hide' : 0,
			\ })
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_restore_alternate_file = 1
let g:vimfiler_tree_indentation = 1
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▼'
let g:vimfiler_tree_closed_icon = '▷'
let g:vimfiler_readonly_file_icon = '*'
let g:vimfiler_marked_file_icon = '√'
let g:vimfiler_direction = 'rightbelow'

" TagBar
let g:tagbar_left = 1
let g:tagbar_compact = 1

"" Vim settings
filetype plugin indent on
set mouse=a
set ruler
set hlsearch
set nobackup
set nocompatible
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*
set completeopt=menu
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autowrite
set number
set relativenumber
set hidden
set nocursorline
set noerrorbells
set vb t_vb=
set laststatus=2
