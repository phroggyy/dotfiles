"-- Status Line Setup
set statusline =%#identifier#
set statusline+=[%f] " Tail of the filename
set statusline+=%*

"-- Display a warning if the file format isnt UNIX
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"-- Display a warning if the file encoding isn't UTF-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      " Help File Flag
set statusline+=%y      " File Type

"-- Read Only Flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"-- Modified Flag
set statusline+=%#warningmsg#
set statusline+=%m
set statusline+=%*

"-- Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=      " Left / Right Separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ " Current Highlight
set statusline+=%c,     " Cursor Column
set statusline+=%l/%L   " Cursor Line / Total Lines
set statusline+=\ %P    " Percent Through File
set laststatus=2

"-- Return the syntax highlight group under the cursor
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction
