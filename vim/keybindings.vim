"Normal mode open terminal
no <Leader>` :terminal<CR>

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

"Insert mode quick open new line
ino <C-L> <Esc>o

"Normal mode ctrl l redraw
no <Leader>l :nohls<CR>:diffupdate<CR>:syntax sync fromstart<C-L>

"Normal mode show a prompt for ack search for code
no <F4> :Ack!<Space>

"Normal mode toggle vimfiler
no <F5> :VimFiler<CR>

"Normal mode toggle Tagbar
no <F8> :TagbarToggle<CR>

"Normal mode jump to match tag
no <Leader>% :MtaJumpToOtherTag<CR>

"Normal mode source my vimrc file
no <Leader>so :so $MYVIMRC<CR>

"Normal mode open my vimrc files
no <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
no <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
no <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
no <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
no <Leader>ospp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
no <Leader>ospa :exec "tabnew " . VIMCONFIGDIR . "/plugins_after.vim"<CR>

"Normal mode install plugin via vim-plug
no <Leader>ip :PlugInstall<Cr>

"Normal mode save current file
no <Leader>w :w<CR>

"Toggle next tab with ctrl + tab
no <C-Tab> :tabnext<CR>
"Toggle previous tab with ctrl + shift + tab
no <C-S-Tab> :tabprev<CR>

"Toggle undotree by leader + u
no <Leader>u :UndotreeToggle<CR>

"Normal mode quick open new line up or down and go back to current mark
no go mmo<Esc>`m
no gO mmO<Esc>`m

"Select mode indention dont lose selections
xno < <gv
xno > >gv

"Emmet
imap <C-]> <plug>(emmet-expand-abbr)

xno @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

func! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunc
