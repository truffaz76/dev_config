" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim
" call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"
" plugins
"

" 非同期処理
NeoBundle 'Shougo/vimproc'
" ファイルオープン用
NeoBundle 'Shougo/unite.vim'
" ファイルツリー表示
NeoBundle 'scrooloose/nerdtree'
" rails用
NeoBundle 'taichouchou2/vim-rails'
NeoBundle 'ruby-matchit' " キーワード移動
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" NERDTree ハイライト
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" color theme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
call neobundle#end()
	

filetype plugin indent on

" 行数表示
set nu
" tabをスペース2つに
set tabstop=2
" ファイル名指定の時はNERDTree非表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 起動時にNERDTreeを表示
autocmd vimenter * NERDTree

NeoBundleCheck
