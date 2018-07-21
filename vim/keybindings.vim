"Quit current window
no <C-Z> :q<CR>

"Disable space to jump a character
no <Space> <Nop>
"Normal mode move up and down half page using U and D
no D <C-D>zz
no U <C-U>zz

"Normal mode cancel K to list manual page
no K <Nop>

"Move text line up and line
no <C-Up> :m-2<CR>
no <C-Down> :m'>+<CR>

"Move multiple lines up and down
xno <C-Up> :m-2<CR>gv=gv
xno <C-Down> :m'>+<CR>gv=gv

"Normalize wrap mode jump
no j gj
no k gk
no gj j
no gk k

"Insert mode quick open new line
ino <C-L> <Esc>o

"Normal mode show a prompt for ack search for code
no <F4> :Ack!<Space>

"Normal mode toggle vimfiler
no <F5> :exec "VimFiler"<CR>

"Normal mode toggle Tagbar
no <F8> :exec "TagbarToggle"<CR>

"Normal mode open terminal
no <Leader>` :exec "terminal"<CR>

"Normal mode ctrl l redraw
no <Leader>l :exec "nohls \| diffupdate \| syntax sync fromstart"<CR><C-L>

"Normal mode jump to match tag
no <Leader>% :exec "MtaJumpToOtherTag"<CR>

"Normal mode source my vimrc file
no <Leader>so :exec "so " . $MYVIMRC<CR>

"Normal mode open my vimrc files
no <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
no <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
no <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
no <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
no <Leader>ospp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
no <Leader>ospa :exec "tabnew " . VIMCONFIGDIR . "/plugins_after.vim"<CR>

"Vim-Plug
no <Leader>PI :exec "so $MYVIMRC \| PlugInstall"<CR>
no <Leader>PU :exec "so $MYVIMRC \| PlugUpdate"<CR>
no <Leader>PC :exec "so $MYVIMRC \| PlugClean"<CR>

"Normal mode save current file
no <Leader>w :exec "write"<CR>

"LocalLeader
"Toggle undotree by leader + u
no <LocalLeader>U :exec "UndotreeToggle"<CR>
"Fuzzy finder find files
no <LocalLeader>F :exec "Files"<CR>
"Fuzzy finder help tags
no <LocalLeader>H :exec "Helptags"<CR>
"Fuzzy finder help about commands
no <LocalLeader>CM :exec "Commands"<CR>
"Fuzzy finder help about commits
no <LocalLeader>CC :exec "Commits"<CR>
"Fuzzy finder help about maps
no <LocalLeader>M :exec "Maps"<CR>

"Normal mode quick open new line up or down and go back to current mark
no go mmo<Esc>`m
no gO mmO<Esc>`m

"Select mode indention dont lose selections
xno < <gv
xno > >gv

"Emmet
imap <C-]> <plug>(emmet-expand-abbr)

"Excute macros multiple lines
xno @ :<C-U>call ExecuteMacroOverVisualRange()<CR>
func! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunc
