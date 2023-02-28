function! vimcomment#ToggleComment()
	let line = getline('.')
	let lineBegining = strpart(line, 0, len(g:comment))

	if lineBegining == g:comment
		call setline('.', strpart(line, len(g:comment), len(line)))
	else
		call setline('.', g:comment . line)
	endif

	if g:goNextLine
		normal! j
	endif
endfunction
