" Insert mode quick open new line
inoremap <C-l> <Esc>o

" Normal mode show a prompt for ack search for code
nnoremap <F4> :Ack!<Space>

" Normal mode toggle vimfiler
nnoremap <F5> :VimFiler<CR>

" Normal mode toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" Normal mode jump to match tag
nnoremap <Leader>% :MtaJumpToOtherTag<CR>

" Normal mode source my vimrc file
nnoremap <Leader>so :so ~/.vimrc<CR>

" Normal mode open my vimrc files
nnoremap <Leader>osa :e ~/dotfiles/vim/autocmd.vim<CR>
nnoremap <Leader>osc :e ~/dotfiles/vim/configs.vim<CR>
nnoremap <Leader>osi :e ~/dotfiles/vim/init.vim<CR>
nnoremap <Leader>osk :e ~/dotfiles/vim/keybindings.vim<CR>
nnoremap <Leader>osp :e ~/dotfiles/vim/plugins.vim<CR>

" Normal mode install plugin via vim-plug
nnoremap <Leader>ip :PlugInstall<CR>

" Normal mode save current file
nnoremap <Leader>w :w<CR>
