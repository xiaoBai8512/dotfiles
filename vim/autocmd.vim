"Welcome page using VimEnter event and via augroup
aug WelcomePage
	au!
	au VimEnter * call s:OpenTagbarAndVimFilerWhenStarted()
aug end

func! s:OpenTagbarAndVimFilerWhenStarted() abort
	VimFiler
	wincmd p
endf

"Stolen from spacevim repo just simply quit vim when close the last buffer
aug VimfilerInitAutoGroup
	au!
	"Vimfiler Init
	au FileType vimfiler call s:VimfilerInit()
	au BufEnter * nested if (!has('vim_starting') && winnr('$') == 1 && &filetype ==# 'vimfiler') |
			\ q | endif
aug end

func! s:VimfilerInit() abort
	setl nonumber
	setl norelativenumber
	setl nolist
	silent! nunmap <buffer> s
	silent! nunmap <buffer> v

	nmap <buffer> c
				\ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_copy_file)
	nmap <buffer> m
				\ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_move_file)
	nmap <buffer> d
				\ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
	no <silent><buffer> sh  :<C-U>call <SID>vimfiler_vsplit()<CR>
  no <silent><buffer> ss  :<C-U>call <SID>vimfiler_split()<CR>
endf

func! s:vimfiler_vsplit() abort
	let path = vimfiler#get_filename()
	if !isdirectory(path)
		wincmd p
		exe 'vsplit' path
	else
		echohl ModeMsg
		echo path . ' is a directory!'
		echohl NONE
	endif
endf

func! s:vimfiler_split() abort
	let path = vimfiler#get_filename()
	if !isdirectory(path)
		wincmd p
		exe 'split' path
	else
		echohl ModeMsg
		echo path . ' is a directory!'
		echohl NONE
	endif
endf

"Sync theme from BufferEnter to fix highlighting issues
au BufEnter * :syntax sync fromstart

"If filetype = python set = to autopep8 to format python code
au FileType python set equalprg=autopep8\ -

"If current file is a vimrc file then source this file
au BufWritePost $MYVIMRC :exec "so $MYVIMRC"

"Insert mode hide cursorline
au InsertLeave,WinEnter * set cursorline
au InsertEnter,WinLeave * set nocursorline
