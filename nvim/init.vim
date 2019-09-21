"Hello! Vim!!

function! s:source_rc(path, ...) abort "{{{
	let use_global = get(a:000, 0, !has('vim_starting'))
  let abspath = resolve(expand('~/.config/nvim/rc/' . a:path))
  if !use_global
    execute 'source' fnameescape(abspath)
    return
	endif

	" substitute all 'set' to 'setglobal'
  let content = map(readfile(abspath),
        \ 'substitute(v:val, "^\\W*\\zsset\\ze\\W", "setglobal", "")')
  " create tempfile and source the tempfile
  let tempfile = tempname()
  try
    call writefile(content, tempfile)
    execute 'source' fnameescape(tempfile)
  finally
    if filereadable(tempfile)
      call delete(tempfile)
    endif
  endtry
endfunction"}}}

" plugin dir
let s:dein_dir = expand('~/.cache/dein')
" dein-self dir
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein dir なければ作成してclone
if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
" runtimepath設定
execute 'set runtimepath+=' . s:dein_repo_dir
	"set runtimepath+=~/.

call s:source_rc('dein.rc.vim')
call s:source_rc('options.rc.vim')
call s:source_rc('filetype.rc.vim')

" プラグインに対する設定反映
filetype indent on
syntax on
