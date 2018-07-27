"Open NerdTree Auto Group
au VimEnter * call s:WelcomepageLoad()

func! s:WelcomepageLoad() abort
    exec 'NERDTree | wincmd p | Startify'
endf
"
"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Sync theme from BufferEnter to fix highlighting issues
au BufEnter * :syntax sync fromstart

"If filetype = python set = to autopep8 to format python code
au FileType python set equalprg=autopep8\ -

"If current file is a vimrc file then source this file
au BufWritePost $MYVIMRC :exec "so $MYVIMRC"

"RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Goyo intergration with limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"Startify
autocmd User Startified setlocal cursorline

"Prettier
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
