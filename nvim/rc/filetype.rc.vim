augroup TabStep
	autocmd!
	autocmd BufNewFile,BufRead,BufEnter *.rhtml set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.html  set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.css   set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.scss  set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.scala set tabstop=4 shiftwidth=4
	autocmd BufNewFile,BufRead,BufEnter *.rb    set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.erb   set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.c     set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.cpp   set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.h     set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.py    set tabstop=4 shiftwidth=4 filetype=python
	autocmd BufNewFile,BufRead,BufEnter *.go    set tabstop=4 shiftwidth=4
	autocmd BufNewFile,BufRead,BufEnter *.toml  set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.vim   set tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead,BufEnter *.scss  set filetype=scss
	autocmd BufNewFile,BufRead,BufEnter *.{md,mdwn,mkd,mkdn,mark} set filetype=markdown
augroup END

augroup VimCheckTime
	autocmd!
  autocmd BufEnter * checktime
augroup END
