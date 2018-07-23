"Quit current window
noremap <C-Z> :q<CR>

"Disable space to jump a character
noremap <Space> <Nop>

"Normal mode cancel K to list manual page
noremap K <Nop>

"Normal mode cancel backspace key
noremap <BS> <Nop>

"Move text line up and line
noremap <silent> <C-Up> :m-2<CR>
noremap <silent> <C-Down> :m+1<CR>

"Move multiple lines up and down
xnoremap <silent> <C-Up> :m-2<CR>gv=gv
xnoremap <silent> <C-Down> :m'>+<CR>gv=gv

"Move cursor keep cursor position
noremap <C-E> 20<C-E>
noremap <C-Y> 20<C-Y>

"Easy navigate between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"Normalize wrap mode jump
noremap j gj
noremap k gk
noremap gj j
noremap gk k

"Insert mode quick open new line
inoremap <C-L> <Esc>o

"Normal mode toggle NERDTree (think as File list)
noremap <Leader>fl :exec "NERDTreeToggle"<CR>

"Normal mode toggle Tagbar
noremap <F8> :exec "TagbarToggle"<CR>

"Open new tab
noremap <Leader>tn :exec "tabnew"<CR>

"Zen mode using goyo and resize to 200 width
noremap <silent> <Leader>z :exec 'Goyo 200 \| setl nu rnu'<CR>
noremap <silent> <Leader>Z :exec "Goyo!"<CR>

"Bind enter key to navigate between tabs
noremap <CR> :exec "tabnext"<CR>
noremap <S-CR> :exec "tabprev"<CR>

"Normal mode open terminal
noremap <Leader>` :exec "terminal"<CR>

"Normal mode escape for redraw window and sync highlighting, this is beacuse
"of <C-L> is used for navigating windows
noremap <silent> <BS> :exec 'nohls \| diffupdate \| syntax sync fromstart \| redraw'<CR>

"Normal mode jump to match tag
noremap <Leader>% :exec "MtaJumpToOtherTag"<CR>

"Normal mode source my vimrc file
noremap <Leader>so :exec "so " . $MYVIMRC<CR>

"Normal mode open my vimrc files
noremap <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
noremap <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
noremap <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
noremap <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
noremap <Leader>osp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
noremap <Leader>osv :exec "tabnew " . VIMCONFIGDIR . "/vimrc"<CR>

"Vim-Plug
noremap <Leader>PI :exec "so $MYVIMRC \| PlugInstall"<CR>
noremap <Leader>PU :exec "so $MYVIMRC \| PlugUpdate"<CR>
noremap <Leader>PC :exec "so $MYVIMRC \| PlugClean"<CR>

"Jplus
nmap J <Plug>(jplus)
vmap J <Plug>(jplus)
nmap <Leader>J <Plug>(jplus-getchar)
vmap <Leader>J <Plug>(jplus-getchar)

"Normal mode save current file
noremap <silent> <Leader>w :exec "write"<CR>

"LocalLeader
"Toggle undotree by leader + u
noremap <LocalLeader>U :exec "UndotreeToggle"<CR>
"Fuzzy finder find files
noremap <LocalLeader>F :exec "Files"<CR>
"Fuzzy finder help tags
noremap <LocalLeader>H :exec "Helptags"<CR>
"Fuzzy finder help about commands
noremap <LocalLeader>CM :exec "Commands"<CR>
"Fuzzy finder help about commits
noremap <LocalLeader>CC :exec "Commits"<CR>
"Fuzzy finder help about maps
noremap <LocalLeader>M :exec "Maps"<CR>
"Normal mode show a prompt for ack search for code
noremap <LocalLeader>A :Ack!<Space>

"Normal mode quick open new line up or down and go back to current mark
noremap go mmo<Esc>`m
noremap gO mmO<Esc>`m

"Select mode indention dont lose selections
xnoremap < <gv
xnoremap > >gv

"Emmet
imap <C-]> <plug>(emmet-expand-abbr)

"Excute macros multiple lines
xnoremap @ :<C-U>call ExecuteMacroOverVisualRange()<CR>
func! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunc
