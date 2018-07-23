"Vim settings
filetype plugin indent on
set autoindent "Auto indent
set expandtab
set foldenable
set hidden
set hls "highlight search
set ignorecase
set laststatus=2 "Last status
set list listchars=tab:\|\ "set list set listchars | https://github.com/Yggdroot/indentLine/issues/111
set modeline
set nocompatible
set nostartofline
set notimeout ttimeout
set pastetoggle="<F2>"
set ruler
set shell=/bin/bash
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*,*/.pyc,*/.ropeproject/*
set wildmenu
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set nolazyredraw " Don't redraw while executing macros
set magic " Set magic on, for regex
set ttyfast " Faster redrawing
set scrolloff=7 "Set scrolloff for more visible context top and below
if(has('mac')) | set macmeta | endif "Set metakey enabled when current system is macos for Yankstack

"GUI specific settings
set guioptions=i
set mouse=a
set noerrorbells
set vb t_vb=

"Themes
colorscheme onedark
set background=dark "Background color
set cursorline
set guifont=RobotoMono_Nerd_Font:h12
set laststatus=2
if exists('+colorcolumn')
    set colorcolumn=80
endif
set number "Line Number
set relativenumber "Relative number
set t_Co=256 "Terminal color
if !exists('g:syntax_on') | syntax enable | endif

"Plugins

"Python-Mode
let g:pymode_python = 'python3'
let g:pymode_folding = 1
let g:pymode_rope_completion_bind = '<S-Space>'
let g:pymode_rope_autoimport = 0

"Vim-Jsx-Pretty
let g:vim_jsx_pretty_colorful_config = 1

"Deoplete
let g:deoplete#enable_at_startup = 1

"SuperTab
let g:SuperTabDefaultCompletionType = '<C-N>'

"UltiSnipates
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsUsePythonVersion = 3

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " Tab number
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
" let g:airline#extensions#tabline#fnamecollapse = 0
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#show_close_button = 0
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#buffer_nr_show = 0

"AlwaysMathTags
let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'vue': 1,
            \ 'javascript.jsx': 1,
            \ 'jinja' : 1,
            \ 'wxml': 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \}

"CtrlP
let g:ctrlp_max_height = 30

"TagBar
let g:tagbar_compact = 1
let g:tagbar_left = 1

"ALE
let g:ale_fixers = {
            \ 'javascript': ['prettier','prettier_eslint'],
            \ 'scss': ['prettier','prettier_eslint'],
            \ 'sass': ['prettier','prettier_eslint'],
            \}

"Multiple cursor
let g:multi_cursor_select_all_word_key = '<Leader><C-N>'

"Indent line
let g:indentLine_enabled = 1
let g:indentLine_setConceal = 0
"Jsx
let g:jsx_ext_required = 0

"Prettier
let g:prettier#autoformat = 0
"max line length that prettier will wrap on
let g:prettier#config#print_width = 80
"number of spaces per indentation level
let g:prettier#config#tab_width = 4
"use tabs over spaces
let g:prettier#config#use_tabs = 'true'
"print semicolons
let g:prettier#config#semi = 'false'
"single quotes over double quotes
let g:prettier#config#single_quote = 'true'
"print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
"put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'
"void|always
let g:prettier#config#arrow_parens = 'always'
"one|es5|all
let g:prettier#config#trailing_comma = 'all'
"flow|babylon|typescript|css|less|scss|json|graphql|markdown
let g:prettier#config#parser = 'flow'
"cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'file-override'
"always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

"Emmet
let g:user_emmet_leader_key = '<C-T>'

"NERDTree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 35
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeAutoCenter = 1
