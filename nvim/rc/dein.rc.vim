" よくわからん.おまじない
if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

" 設定開始
let s:dein_dir = expand('~/.cache/dein')
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	call dein#load_toml('~/.config/nvim/rc/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.config/nvim/rc/dein_lazy.toml', {'lazy': 1})
	call dein#load_toml('~/.config/nvim/rc/dein_neo.toml', {'lazy': 1})
	call dein#load_toml('~/.config/nvim/rc/dein_python.toml', {'lazy': 1})
	call dein#load_toml('~/.config/nvim/rc/dein_front.toml', {'lazy': 1})
	call dein#load_toml('~/.config/nvim/rc/dein_lang.toml', {'lazy': 1})

	" load終了
	call dein#end()
	call dein#save_state()
endif

" 新規PluginInstall
if !has('vim_starting') && dein#check_install()
call dein#install()
endif
