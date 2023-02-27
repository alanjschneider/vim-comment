function! ToggleComment()
  let ext = expand('%:e')
  let comment = ""

  if ext == "c" || ext == "cpp" || ext == "js"
    let comment = '// '
  elseif ext == "vim"
    let comment = '" '
  elseif ext == "py" || ext == "sh" || ext == "bashrc"
    let comment = "# "
  endif

  let line = getline('.')
  let lineBegining = strpart(line, 0, len(comment))

  if lineBegining == comment
    call setline('.', strpart(line, len(comment), len(line)))
  else
	  call setline('.', comment . line)
  endif

  normal! j
endfunction
