setlocal noexpandtab
setlocal tabstop=8
setlocal shiftwidth=8

setlocal smarttab
setlocal backspace=eol,start,indent

syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
syn keyword cOperator likely unlikely

syn match ErrorLeadSpace /^ \+/         " highlight any leading spaces
syn match ErrorTailSpace / \+$/         " highlight any trailing spaces

" setlocal foldmethod=syntax

let $kernel_version=system('uname -r | tr -d "\n"')
setlocal tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags,/lib/modules/$kernel_version/build/tags,/usr/include/tags

setlocal wildignore+=*.ko,*.mod.c,*.order,modules.builtin

" http://www.jukie.net/bart/blog/vim-and-linux-coding-style
