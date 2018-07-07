" Sync theme from BufferEnter to fix highlighting issues
au BufEnter * :syntax sync fromstart

" If filetype = python set = to autopep8 to format python code
au FileType python set equalprg=autopep8\ -

" Welcome page using VimEnter event and via augroup
augroup Welcome
	au!
	au VimEnter * call s:OpenTagbarAndVimFilerWhenStarted()
augroup end

function! s:OpenTagbarAndVimFilerWhenStarted() abort
	Tagbar
	VimFiler
	wincmd p
endf

" Vimfiler Init
au FileType vimfiler call s:VimfilerInit()

function! s:VimfilerInit() abort
	setl nonumber
	setl norelativenumber
endf

" Copy from spacevim repo just simply quit vim when close the last buffer
au BufEnter * nested if (!has('vim_starting') && winnr('$') == 1 && &filetype ==# 'vimfiler') |
			\ q | endif

" Open TagBar if filetype supported when VimEnter
au FileType * nested :call tagbar#autoopen(0)
