" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: 06.remove_trailing_whitespace.vim
"  Modified: 2022-06-01 17:25
"  Description:
"    Remove trailing whitespace when writing a buffer, but not for diff files.
"  From: Vigil <vim5632@rainslide.net>
" =============================================================================

function RemoveTrailingWhitespace()
  if &ft != "diff"
    let b:curcol = col(".")
    let b:curline = line(".")
    silent! %s/\s\+$//
    silent! %s/\(\s*\n\)\+\%$//
    call cursor(b:curline, b:curcol)
  endif
endfunction

"autocmd BufWritePre * call RemoveTrailingWhitespace()
map <leader>0 :call RemoveTrailingWhitespace()<cr>
