" Normal mode open terminal
no <Leader>` :terminal<CR>

" Quit current window
no <C-X> :q<CR>

" Move text line up and line
no <C-Up> ddkP
no <C-Down> ddp

" Normal mode move up and down half page using U and D
no D <C-D>zz
no U <C-U>zz

" Move multiple lines up and down
xno <C-Up> :m-2<CR>gv=gv
xno <C-Down> :m'>+<CR>gv=gv

" Insert mode quick open new line
ino <C-L> <Esc>o

" Normal mode ctrl l redraw
no <Leader>l :nohls<CR>:diffupdate<CR><C-L>

" Insert mode quick jump up and down
no <C-J> jzz
no <C-K> kzz

" Normal mode show a prompt for ack search for code
no <F4> :Ack!<Space>

" Normal mode toggle vimfiler
no <F5> :VimFiler<Cr>

" Normal mode toggle Tagbar
no <F8> :TagbarToggle<Cr>

" Normal mode jump to match tag
no <Leader>% :MtaJumpToOtherTag<Cr>

" Normal mode source my vimrc file
no <Leader>so :so ~/.vimrc<Cr>

" Normal mode open my vimrc files
no <Leader>osa :e ~/dotfiles/vim/autocmd.vim<Cr>
no <Leader>osc :e ~/dotfiles/vim/configs.vim<Cr>
no <Leader>osi :e ~/dotfiles/vim/init.vim<Cr>
no <Leader>osk :e ~/dotfiles/vim/keybindings.vim<Cr>
no <Leader>ospp :e ~/dotfiles/vim/plugins.vim<Cr>
no <Leader>ospa :e ~/dotfiles/vim/plugins_after.vim<Cr>

" Normal mode install plugin via vim-plug
no <Leader>ip :PlugInstall<Cr>

" Normal mode save current file
no <Leader>w :w<Cr>

" Toggle next tab with ctrl + tab
no <C-Tab> :tabnext<Cr>
" Toggle previous tab with ctrl + shift + tab
no <C-S-Tab> :tabprev<Cr>

" Toggle undotree by leader + u
no <Leader>u :UndotreeToggle<Cr>

" Normal mode quick open new line up or down and go back to current mark
no go mmo<Esc>`m
no gO mmO<Esc>`m

" Normal mode highlight search result when set nohls
no n :set hls<CR>n
no N :set hls<CR>N
