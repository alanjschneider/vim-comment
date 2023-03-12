if exists("g:loadedVimComment")
    echom g:loadedVimComment
    finish
endif

echom "VimComment initialized"

let g:loadedVimComment = 1

if !exists("g:goNextLine")
    let g:goNextLine = v:true
endif

function! GetCommentString()
    let ext = expand('%:e')

    echom "File: " expand('%')
    echom "ext: " ext

    if index(["c", "cpp", "js", "php", "java"], ext) != -1
        return '// '
    elseif ext == "vim" || ext == "vimrc"
        return '" '
    elseif index(["py", "sh", "bashrc", "profile"], ext) != -1
        return "# "
    elseif ext == "lua"
        return "-- "
    endif

    return ""
endfunction

let g:comment = ""

autocmd BufRead * let g:comment = GetCommentString()
autocmd FileChangedShellPost * let g:comment = GetCommentString()
command! ToggleComment call vimcomment#ToggleComment()
