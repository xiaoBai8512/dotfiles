"Open NerdTree Auto Group
autocmd VimEnter * call s:WelcomepageLoad()

func! s:WelcomepageLoad() abort
    exec 'NERDTree | wincmd p | Startify'
endf
"
"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType nerdtree setlocal nolist

"Sync theme from BufferEnter to fix highlighting issues
autocmd BufEnter * :syntax sync fromstart

"If filetype = python set = to autopep8 to format python code
autocmd FileType python set equalprg=autopep8\ -

"If current file is a vimrc file then source this file
autocmd BufWritePost $MYVIMRC :exec "so $MYVIMRC"

"RainbowParentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

"Goyo intergration with limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"Startify
autocmd User Startified setlocal cursorline
