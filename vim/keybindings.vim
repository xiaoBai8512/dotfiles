" Insert mode quick open new line
inoremap <C-l> <Esc>o

" Insert mode quick jump to lineend
inoremap <C-e> <Esc>A

" Insert mode quick jump to linestart
inoremap <C-a> <Esc>I

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
