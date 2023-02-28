function! GetCommentString()
	let ext = expand('%:e')

	if index(["c", "cpp", "js", "php", "java"], ext) != -1
		return '// '
	elseif ext == "vim"
		return '" '
	elseif ext == "py" || ext == "sh" || ext == "bashrc"
		return "# "
	elseif ext == "lua"
		return "-- "
	endif
endfunction

function! vimcomment#ToggleComment()
	let comment = GetCommentString()

	let line = getline('.')
	let lineBegining = strpart(line, 0, len(comment))

	if lineBegining == comment
		call setline('.', strpart(line, len(comment), len(line)))
	else
		call setline('.', comment . line)
	endif

	if g:goNextLine
		normal! j
	endif
endfunction
