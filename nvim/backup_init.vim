"Hello! Vim!!

"=========="
" 表示設定
"=========="
" 文字コード
set fenc=utf-8
" title表示
set title
" 行番号の表示
set number
" 画面折り返し表示(横）
set wrap
" 入力中コマンド表示
set showcmd
" コマンド表示幅
set cmdheight=2
" ステータス行常に表示
set laststatus=2
" 対応する括弧強調
set showmatch 
" 対応括弧に飛ぶ時間
set matchtime=1
" ファイル名補完
set wildmenu
" wildmenu長さ設定
set wildmode=list:longest
" 図の描写に便利
set virtualedit+=block
" タブ文字幅
set tabstop=2 
" タブキー押下時に挿入される文字幅を指定
"set softtabstop=2
" 自動インデント幅
set shiftwidth=2 
" 前行のインデント引き継ぎ
set autoindent 
" インデント自動調整
set smartindent
" error時のbell不要
set noerrorbells

"=========="
" file設定
"=========="
" backupは作らない
set nobackup
" swapfileは作らない
set noswapfile
" 保存されていないファイルがあっても別ファイル開ける
set hidden
" 外部でファイルが保存されたら読み直す
set autoread

"=========="
" 検索設定
"=========="
" インクリメンタルサーチ
set incsearch
" 検索結果のハイライト
set hlsearch
" 大文字小文字は区別しない
set ignorecase
" 大文字小文字が混合している時は区別して検索
set smartcase 
" 検索で末尾までいったら先頭に戻る
set wrapscan 

"============="
" Command設定
"============="
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" jj,kkでNormalModeに
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>

" タブ間移動
" 上下移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
" 左移動
nnoremap sh <C-w>h
" 右移動
nnoremap sl <C-w>l
" 順次移動
nnoremap sw <C-w>w

" filetree setting"
let g:netrw_liststyle = 3

" よくわからん.おまじない
if &compatible
	set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

"augroup ColorScheme
"autocmd!
"augroup END

"augroup PrevimSettings
"autocmd!
"augroup END

" vim起動時にNERDTreeコマンド実行
augroup NERDTREE
autocmd vimenter * NERDTree
augroup END

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

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

	call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " load終了
  call dein#end()
  call dein#save_state()
endif

" 新規PluginInstall
if !has('vim_starting') && dein#check_install()
	call dein#install()
endif

" プラグインに対する設定反映
filetype indent on
syntax enable
