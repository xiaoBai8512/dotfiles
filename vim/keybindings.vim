"Quit current window
nnoremap <C-Z> :q<CR>

"Disable space to jump a character
nnoremap <Space> <Nop>

"Normal mode cancel K to list manual page
nnoremap K <Nop>

"Yank till end of the line
nnoremap Y y$

"Move text line up and line
nnoremap <silent> <C-Up> :m-2<CR>
nnoremap <silent> <C-Down> :m+1<CR>

"Move multiple lines up and down
xnoremap <silent> <C-Up> :m-2<CR>gv=gv
xnoremap <silent> <C-Down> :m'>+<CR>gv=gv

"Easy navigate between windows
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

"Easy resize window
nnoremap <silent> <S-Up> :res +1<CR>
nnoremap <silent> <S-Down> :res -1<CR>
nnoremap <silent> <S-Left> :vertical res -1<CR>
nnoremap <silent> <S-Right> :vertical res +1<CR>

"Normalize wrap mode jump
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

"Insert mode quick open new line
inoremap <silent> <C-CR> <Esc>o
inoremap <silent> <C-S-CR> <Esc>O

"Normal mode toggle NERDTree (think as File list)
nnoremap <silent> <Leader>fl :exec "NERDTreeToggle"<CR>

"Normal mode toggle Tagbar
nnoremap <silent> <F8> :exec "TagbarToggle"<CR>

"Open new tab
nnoremap <silent> <Leader>tn :exec "tabnew"<CR>

"Zen mode using goyo and resize to 200 width
nnoremap <silent> <Leader>z :exec 'Goyo 200 \| setl nu rnu'<CR>
nnoremap <silent> <Leader>Z :exec "Goyo!"<CR>

"Normal mode open terminal
nnoremap <Leader>` :exec "terminal"<CR>

"Normal mode escape for redraw window and sync highlighting, this is beacuse
"of <C-L> is used for navigating windows
"Cant bind to <Esc> beacuse it will cause E481 no range allowed warning
nnoremap <silent> <BS> :exec 'nohls \| diffupdate \| syntax sync fromstart \| redraw'<CR>

"Normal mode jump to match tag
nnoremap <silent> <Leader>% :exec "MtaJumpToOtherTag"<CR>

"Normal mode source my vimrc file
nnoremap <Leader>so :exec "so " . $MYVIMRC<CR>

"Normal mode open my vimrc files
nnoremap <silent> <Leader>osa :exec "tabnew " . VIMCONFIGDIR . "/autocmd.vim"<CR>
nnoremap <silent> <Leader>osc :exec "tabnew " . VIMCONFIGDIR . "/configs.vim"<CR>
nnoremap <silent> <Leader>osi :exec "tabnew " . VIMCONFIGDIR . "/init.vim"<CR>
nnoremap <silent> <Leader>osk :exec "tabnew " . VIMCONFIGDIR . "/keybindings.vim"<CR>
nnoremap <silent> <Leader>osp :exec "tabnew " . VIMCONFIGDIR . "/plugins.vim"<CR>
nnoremap <silent> <Leader>osv :exec "tabnew " . VIMCONFIGDIR . "/vimrc"<CR>

"Vim-Plug
nnoremap <silent> <Leader>PI :exec "so $MYVIMRC \| PlugInstall"<CR>
nnoremap <silent> <Leader>PU :exec "so $MYVIMRC \| PlugUpdate"<CR>
nnoremap <silent> <Leader>PC :exec "so $MYVIMRC \| PlugClean"<CR>

"Jplus
nnoremap J <Plug>(jplus)
vmap J <Plug>(jplus)
nnoremap <Leader>J <Plug>(jplus-getchar)
vmap <Leader>J <Plug>(jplus-getchar)

"ChooseWindows
nmap , <Plug>(choosewin)

"Normal mode save current file
nnoremap <silent> <Leader>w :exec "write"<CR>

"LocalLeader
"Toggle undotree by leader + u
nnoremap <LocalLeader>U :exec "UndotreeToggle"<CR>
"Fuzzy finder find files
nnoremap <LocalLeader>F :exec "Files"<CR>
"Fuzzy finder help tags
nnoremap <LocalLeader>H :exec "Helptags"<CR>
"Fuzzy finder help about commands
nnoremap <LocalLeader>CM :exec "Commands"<CR>
"Fuzzy finder help about commits
nnoremap <LocalLeader>CC :exec "Commits"<CR>
"Fuzzy finder help about maps
nnoremap <LocalLeader>M :exec "Maps"<CR>
"Normal mode show a prompt for ack search for code
nnoremap <LocalLeader>A :Ack!<Space>
"Normal mode show a prompt for Buffers list
nnoremap <LocalLeader>B :exec "Buffers"<CR>

"Normal mode quick open new line up or down and go back to current mark
nnoremap go mmo<Esc>`m
nnoremap gO mmO<Esc>`m

"Select mode indention dont lose selections
xnoremap < <gv
xnoremap > >gv

"Emmet
imap <C-]> <plug>(emmet-expand-abbr)

"Neosnippets
imap <expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"Excute macros multiple lines
xnoremap @ :<C-U>call ExecuteMacroOverVisualRange()<CR>
func! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
endfunc

"Ctrlp-Funky
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>

"LanguageClient
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"Toggle cursorline and relativenumber
nnoremap <silent> <Leader>RN :set relativenumber cursorline<CR>
nnoremap <silent> <Leader>rn :set norelativenumber nocursorline<CR>
