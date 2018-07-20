"Normal mode open terminal
no <Leader>` :exec "terminal"<CR>

"Quit current window
no <C-Z> :q<CR>

"Move text line up and line
no <C-Up> ddkP
no <C-Down> ddp

"Normal mode move up and down half page using U and D
no D <C-D>zz
no U <C-U>zz

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

"Normal mode ctrl l redraw
no <Leader>l :exec "nohls \| diffupdate \| syntax sync fromstart"<CR><C-L>

"Normal mode show a prompt for ack search for code
no <F4> :Ack!<Space>

"Normal mode toggle vimfiler
no <F5> :exec "VimFiler"<CR>

"Normal mode toggle Tagbar
no <F8> :exec "TagbarToggle"<CR>

"Normal mode jump to match tag
no <Leader>% :MtaJumpToOtherTag<CR>

"Normal mode source my vimrc file
no <Leader>so :exec "so " . $MYVIMRC<CR>

"Normal mode open my vimrc files
no <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
no <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
no <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
no <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
no <Leader>ospp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
no <Leader>ospa :exec "tabnew " . VIMCONFIGDIR . "/plugins_after.vim"<CR>

"Normal mode install and update plugin via vim-plug
no <Leader>ip :exec "so " . $MYVIMRC "\| PlugInstall"<CR>
no <Leader>up :exec "so " . $MYVIMRC "\| PlugUpdate"<CR>

"Normal mode save current file
no <Leader>w :w<CR>

"Toggle undotree by leader + u
no <Leader>U :exec "UndotreeToggle"<CR>

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
