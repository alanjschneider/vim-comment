# vim comment

A simple plugin for comment lines of code

## Installation

Vim-Plug
```vim
call plug#begin()
    Plug 'alanjoelschneider/vim-comment'
call plug#end()
```

## How to use it

Add a bind to ```:ToggleComment```
```vim
nnoremap <silent> <C-_> :ToggleComment<CR>
```
Now if you press ```Ctrl + /``` the current line will be commented

## Change default behavior

By default, after a line is commented the cursor goes to the next line.
If you want the cursor not to go to the next line you need to change the ```g:goNextLine``` to ```v:false```
```vim
let g:goNextLine = v:false
```

## Comment multiple lines

You can enter to ```Visual Line Mode```, select the lines you want and then press ```Ctrl + /```

## Supported languages

By the while, these are the supported languages:
* JavaScript
* Python
* PHP
* Java
* C
* C++
* Lua
* VimScript
* ShellScript