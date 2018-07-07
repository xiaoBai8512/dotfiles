" Sync theme from BufferEnter to fix highlighting issues
autocmd BufEnter * :syntax sync fromstart

" If filetype = python set = to autopep8 to format python code
autocmd FileType python set equalprg=autopep8\ -

" UserEvent provided by Startify for loading Vimfiler after Startify opened
autocmd User Startified call s:StartifiedOpened()
function! s:StartifiedOpened() abort
	Tagbar
	VimFiler
endf

" Vimfiler Init
autocmd FileType vimfiler call s:VimfilerInit()

function! s:VimfilerInit() abort
	setl nonumber
	setl norelativenumber
endf

" Copy from spacevim repo
autocmd BufEnter * nested if (!has('vim_starting') && winnr('$') == 1 && &filetype ==# 'vimfiler') |
			\ q | endif

" Open TagBar if filetype supported when VimEnter
autocmd VimEnter * nested :call tagbar#autoopen(1)
