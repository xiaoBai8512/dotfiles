" Disable direction keys
no <Left> <Nop>
no <Right> <Nop>
no <Up> <Nop>
no <Down> <Nop>

" Move text line up and line
no <C-Up> ddkP
no <C-Down> ddp

" Insert mode quick open new line
ino <C-L> <Esc>o

" Normal mode quick open new line and go back to current mark
no go mmo<ESC>`m

" Normal mode show a prompt for ack search for code
no <F4> :Ack!<Space>

" Normal mode toggle vimfiler
no <F5> :VimFiler<CR>

" Normal mode toggle Tagbar
no <F8> :TagbarToggle<CR>

" Normal mode jump to match tag
no <Leader>% :MtaJumpToOtherTag<CR>

" Normal mode source my vimrc file
no <Leader>so :so ~/.vimrc<CR>

" Normal mode open my vimrc files
no <Leader>osa :e ~/dotfiles/vim/autocmd.vim<CR>
no <Leader>osc :e ~/dotfiles/vim/configs.vim<CR>
no <Leader>osi :e ~/dotfiles/vim/init.vim<CR>
no <Leader>osk :e ~/dotfiles/vim/keybindings.vim<CR>
no <Leader>ospp :e ~/dotfiles/vim/plugins.vim<CR>
no <Leader>ospa :e ~/dotfiles/vim/plugins_after.vim<CR>

" Normal mode install plugin via vim-plug
no <Leader>ip :PlugInstall<CR>

" Normal mode save current file
no <Leader>w :w<CR>

" Toggle next tab with ctrl + tab
no <C-Tab> :tabnext<CR>
" Toggle previous tab with ctrl + shift + tab
no <C-S-Tab> :tabprev<CR>

" Toggle undotree by leader + u
no <Leader>u :UndotreeToggle<CR>
