if exists("g:loadedVimComment")
	finish
endif

let g:loadedVimComment = 1

if !exists("g:goNextLine")
	let g:goNextLine = v:true
endif

command! ToggleComment call vimcomment#ToggleComment()
