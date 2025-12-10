set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

set statusline=
set statusline=%#StatusLine#
set statusline+=\ %l:%c
set statusline+=\ {%B}
set statusline+=%=
set statusline+=%#MoreMsg#
set statusline+=%m
set statusline+=%t
set statusline+=%#WildMenu#
set statusline+=[%{GitBranch()}]
set statusline+=%#StatusLine#
