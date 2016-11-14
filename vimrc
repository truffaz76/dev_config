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
NeoBundle 'jistr/vim-nerdtree-tabs'

" ruby, rails用
NeoBundle 'taichouchou2/vim-rails'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'basyura/unite-rails'
NeoBundle 'tpope/vim-endwise'

" キーワード移動
NeoBundle 'ruby-matchit'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" NERDTree ハイライト
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
" color theme
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'tomasr/molokai'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
call neobundle#end()
	

filetype plugin indent on

" 行数表示
set nu


set background=dark
set t_Co=256
let g:molokai_original=1
colorscheme molokai

" tabをスペース2つに
set tabstop=2
" 空白、タブ、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
" インデント設定
set shiftwidth=2
set expandtab

" ---------- NERDTree -------------------
"  ファイル名指定の時にツリー非表示、それ以外は表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:set modifiable
:set write
nnoremap <S-A-}> gt
nnoremap <S-A-{> gT
map <C-n> <plug>NERDTreeTabsToggle<CR>
map <C-w> db

NeoBundleCheck
