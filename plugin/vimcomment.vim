if exists("g:loadedVimComment")
	finish
endif

let g:loadedVimComment = 1
let g:goNextLine = v:true

command! ToggleComment call vimcomment#ToggleComment()
