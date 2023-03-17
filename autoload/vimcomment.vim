function! vimcomment#ToggleComment()
    let line = getline('.')

    if match(line, '^\s*' . g:comment . '.*') != -1
        let newLine = substitute(line, '\(^\s*' . g:comment .'\s\)', '', 'g')
    else
        let newLine = substitute(g:comment, '\', '', 'g') . ' ' . line
    endif

    call setline('.', newLine)

    if g:goNextLine
        normal! j
    endif
endfunction
