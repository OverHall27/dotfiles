"basic setting
set wildmenu
set history=5000 "保存するコマンド履歴数
set showmatch "対応する括弧強調
set matchtime=2
set wrap
set title "title表示
set number "行番号の表示
set virtualedit=block
set fenc=utf-8 "文字コード

"display setting
set showcmd "入力中コマンド表示
set cmdheight=2 "コマンド表示幅

"file setting
set nobackup
set noswapfile
set hidden "保存されていないファイルがあっても別ファイル開ける
set autoread "外部でファイルが保存されたら読み直す

"serch/replace setting
set incsearch "インクリメンタルサーチ
set hlsearch "検索結果のハイライト
set ignorecase "大文字小文字は区別しない
set smartcase "大文字小文字が混合している時は区別して検索
set wrapscan "検索で末尾までいったら先頭に戻る

"tab/indent setting
set tabstop=2 "タブ文字幅
set shiftwidth=2 "自動インデントでずれる幅
set autoindent "前行のインデント引き継ぎ
set smartindent

"unknown
set showmatch matchtime=1
set laststatus=2
set wildmode=list:longest

"command shortcut
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w

filetype indent on
"tree setting"
let g:netrw_liststyle = 3

if !&compatible
	set nocompatible
endif

augroup ColorScheme
autocmd!
augroup END

augroup PrevimSettings
autocmd!
augroup END

augroup NERDTREE
 autocmd vimenter * NERDTree
augroup END

"plugin dir
let s:dein_dir = expand('~/.cache/dein')
"dein-self dir
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath+=' . s:dein_repo_dir

"設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

	let s:toml = '~/.config/nvim/dein.toml'
	let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif
