"Vim settings
filetype plugin indent on
set autoindent "Auto indent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
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
set showcmd
set showmatch
set splitbelow
set splitright
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/.swp,*/.DS_Store,*/__pycache__/*,*/.pyc,*/.ropeproject/*
set wildmenu
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set nolazyredraw " Don't redraw while executing macros
set magic " Set magic on, for regex
set ttyfast " Faster redrawing
set scrolloff=7 "Set scrolloff for more visible context top and below
set fileformats=unix,dos,mac "Available formats
set clipboard=unnamed
set sessionoptions+=tabpages,globals
if has("gui_running")
    set macmeta "Set metakey enabled when current system is macos for Yankstack
endif

"GUI specific settings
set guioptions=ik
set mouse=a
set noerrorbells
set vb t_vb=

"Themes
colorscheme gruvbox
set background=dark "Background color
set nocursorline
set norelativenumber "Relative number
set guifont=RobotoMono_Nerd_Font:h14
set laststatus=2
" if exists('+colorcolumn')
"     set colorcolumn=80
" endif
set number "Line Number
set t_Co=256 "Terminal color
set cmdheight=2
set linespace=2
if !exists('g:syntax_on') | syntax enable | endif

"Plugins

"Deoplete
let g:deoplete#enable_at_startup = 1

"Python-Mode
let g:pymode_python = 'python3'
let g:pymode_folding = 1
let g:pymode_rope_completion_bind = '<S-Space>'
let g:pymode_rope_autoimport = 1

"Vim-Jsx-Pretty
let g:vim_jsx_pretty_colorful_config = 1

"UltiSnipates
let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsExpandTrigger="<tab>"

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " Tab number
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

"Taboo rename tab
let g:taboo_tabline = 0

"AlwaysMathTags
let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'vue': 1,
            \ 'javascript': 1,
            \ 'javascript.jsx': 1,
            \ 'jinja' : 1,
            \ 'wxml': 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \}

"CtrlP
let g:ctrlp_max_height = 30
let g:ctrlp_extensions = ['funky']

"TagBar
let g:tagbar_compact = 1
let g:tagbar_left = 1

"ALE
let g:ale_fixers = {
            \ 'javascript': ['prettier','prettier_eslint'],
            \ 'scss': ['prettier','prettier_eslint'],
            \ 'sass': ['prettier','prettier_eslint'],
            \}
let g:ale_use_global_executables = 1

"Multiple cursor
let g:multi_cursor_select_all_word_key = '<Leader><C-N>'
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
        exe 'NeoCompleteLock'
    endif
endfunction

function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
        exe 'NeoCompleteUnlock'
    endif
endfunction

"Indent line
let g:indentLine_enabled = 1
let g:indentLine_setConceal = 0

"Jsx
let g:jsx_ext_required = 0

"Vim-vue
let g:vue_disable_pre_processors = 1

"Prettier
let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 0
let g:prettier#quickfix_auto_focus = 1
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
"For jsx feature
let g:user_emmet_settings = {
            \  'javascript.jsx' : {
            \      'extends' : 'jsx',
            \  },
            \}

"NERDTree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 35
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeIgnore = ['\.swo$', '\.swp$', '^\.git$',
            \'\.pyc', '\.ropeproject', '__pycache__', 'tern-port',
            \'tern-project']
let g:NERDTreeMouseMode = 2
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeAutoCenter = 1

"DevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1

"LanguageClient-neovim
let g:LanguageClient_serverCommands = {
            \ 'javascript.jsx': ['javascript-typescript-stdio'],
            \ 'javascript': ['javascript-typescript-stdio'],
            \ 'typescript': ['javascript-typescript-stdio'],
            \ 'css': ['css-languageserver','--stdio'],
            \ 'scss': ['css-languageserver','--stdio'],
            \ 'sass': ['css-languageserver','--stdio'],
            \ 'html': ['html-languageserver','--stdio'],
            \ 'vue': ['vls'],
            \ 'go': ['go-langserver'],
            \ }

"Autopairs
let g:AutoPairsShortcutToggle = ''

"Ack Search
let g:ack_autoclose = 1

"Yankstack
let g:yankstack_yank_keys = ['y', 'd']
