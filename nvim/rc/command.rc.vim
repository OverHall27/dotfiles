" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :noh<CR>

" jj,kkでNormalModeに
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>

" タブ間移動
" 上移動
nnoremap sk <C-w>k
" 下移動
nnoremap sj <C-w>j
" 左移動
nnoremap sh <C-w>h
" 右移動
nnoremap sl <C-w>l
" 順次移動
nnoremap sw <C-w>w

augroup NERDTREE
autocmd VimEnter * NERDTree
augroup END

" filetree setting"
let g:netrw_liststyle = 3
