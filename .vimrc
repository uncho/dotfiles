
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if &compatible
  set nocompatible               " Be iMproved
endif


"=== neobundle の設定 ===
set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" unite: ファイル操作が出来たりする
" file, file/new など
NeoBundle 'Shougo/unite.vim'

" molokai: monokai のカラースキーマ
NeoBundle 'tomasr/molokai'

" neomru: file_mru を使えるようにする
NeoBundle 'Shougo/neomru.vim'

" nerdtree: ファイルのツリー表示
" :NERDTree
NeoBundle 'scrooloose/nerdtree'

" tcomment-vim: ビジュアルモードで選択した行のコメントをON/OFF
" Ctrl + -
NeoBundle 'tomtom/tcomment_vim'

" vim-trailing-whitespace: 行末の半角スペースの可視化
NeoBundle 'bronson/vim-trailing-whitespace'


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" 配色設定
colorscheme molokai


" http://inari.hatenablog.com/entry/2014/05/05/231307
" """"""""""""""""""""""""""""""
" " 全角スペースの表示
" """"""""""""""""""""""""""""""
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
	augroup ZenkakuSpace
	autocmd!
		autocmd ColorScheme * call ZenkakuSpace()
		autocmd VimEnter,WinEnter,BufRead * let
		w:m1=matchadd('ZenkakuSpace', '　')
	augroup END
	call ZenkakuSpace()
endif
" """"""""""""""""""""""""""""""
