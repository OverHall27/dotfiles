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

" vim起動時にNERDTreeコマンド実行
augroup NERDTREE
autocmd vimenter * NERDTree
augroup END

" filetree setting"
let g:netrw_liststyle = 3

autocmd BufNewFile,BufRead *.rb nnoremap <C-e> :!ruby %
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %
autocmd BufNewFile,BufRead *.pl nnoremap <C-e> :!perl %
