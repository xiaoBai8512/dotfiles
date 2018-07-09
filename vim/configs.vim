"" Vim settings
filetype plugin indent on
set autoindent
set colorcolumn=+1
set foldenable
set hidden
set hlsearch
set ignorecase
set laststatus=2
set nobackup
set nocompatible
set noerrorbells
set norelativenumber
set number
set ruler
set shiftwidth=2
set showmatch
set softtabstop=2
set tabstop=2
set textwidth=100
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*
set wildmenu

" GUI specific settings
set guioptions=ai
set mouse=a
set vb t_vb=

"" Themes
colorscheme onedark
set background=dark
set guifont=RobotoMono_Nerd_Font:h11
set laststatus=2
set nocursorline
set t_Co=256
syntax enable
syntax on

"" Plugins

" Emmet
let g:user_emmet_anchorizesummary_key = '<C-E>A'
let g:user_emmet_anchorizeurl_key = '<C-E>a'
let g:user_emmet_balancetaginward_key = '<C-E>d'
let g:user_emmet_balancetagoutward_key = '<C-E>D'
let g:user_emmet_codepretty_key = '<C-E>c'
let g:user_emmet_expandabbr_key = '<C-E>e'
let g:user_emmet_expandword_key = '<C-E>;'
let g:user_emmet_imagesize_key = '<C-E>i'
let g:user_emmet_mergelines_key = '<C-E>m'
let g:user_emmet_next_key = '<C-E>n'
let g:user_emmet_prev_key = '<C-E>N'
let g:user_emmet_removetag_key = '<C-E>k'
let g:user_emmet_splitjointag_key = '<C-E>j'
let g:user_emmet_togglecomment_key = '<C-E>/'
let g:user_emmet_update_tag = '<C-E>u'

" Vim-Jsx-Pretty
let g:vim_jsx_pretty_colorful_config = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-N>'

" UltiSnipates
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"

" Airline
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline_powerline_fonts = 1

" AlwaysMathTags
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'javascript.jsx': 1,
			\ 'jinja' : 1,
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
			\ 'explorer_columns' : 'type:size',
			\ 'force_hide' : 0,
			\ 'hidden': 1,
			\ 'no_quit' : 1,
			\ 'parent': 0,
			\ 'safe' : 0,
			\ 'split' : 1,
			\ 'status' : 1,
			\ 'toggle' : 1,
			\ 'winwidth' : 35,
			\ })
let g:vimfiler_ignore_pattern = [
			\ '\.class$',
			\ '^\.',
			\ '^\.DS_Store$',
			\ '^\.git$',
			\ '^\.init\.vim-rplugin\~$',
			\ '^\.netrwhist$',
			\]
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

" ALE
let g:ale_fix_on_save = 1
let g:ale_fixers = {'javascript': ['prettier_eslint']}

" Jsx
let g:jsx_ext_required = 0
