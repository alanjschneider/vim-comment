if exists("g:loadedVimComment")
    finish
endif

let g:loadedVimComment = 1

if !exists("g:goNextLine")
    let g:goNextLine = v:true
endif

function! GetCommentString()
    let ext = expand('%:e')

    if index(["c", "cpp", "js", "php", "java"], ext) != -1
        return '// '
    elseif ext == "vim" || ext == "vimrc"
        return '" '
    elseif index(["py", "sh", "bashrc", "profile", "Makefile"], ext) != -1
        return "# "
    elseif ext == "lua"
        return "-- "
    endif

    return ""
endfunction

let g:comment = ""

autocmd BufNewFile * let g:comment = GetCommentString()
autocmd BufRead * let g:comment = GetCommentString()
autocmd FileChangedShellPost * let g:comment = GetCommentString()
command! ToggleComment call vimcomment#ToggleComment()
