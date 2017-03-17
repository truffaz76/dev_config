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
" 自動保管
NeoBundle 'Shougo/neocomplcache'

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
" html.slim 用プラグイン
NeoBundle 'slim-template/vim-slim'
" タブ表示
NeoBundle 'vim-scripts/buftabs'
" ctrl + P
NeoBundle "ctrlpvim/ctrlp.vim"
" gitコマンドが使える
NeoBundle 'tpope/vim-fugitive'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
call neobundle#end()
	

filetype plugin indent on

" 行数表示
set nu
" クリップボードON
set clipboard=unnamed,autoselect
" ルーラ設定
set ruler

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
set autoindent
set smartindent
" バックアップファイルを作成しない
set nobackup

" 補完をON
let g:neocomplcache_enable_at_startup = 1
" ---------- Buftab -------------------
"let g:buftabs_in_statusline=1 " バッファタブをステータスラインに表示
"let g:buftabs_active_highlight_group="Visual" "現在のバッファをハイライト
" ステータスライン
set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
" ステータスラインを常に表示
set laststatus=2

" ---------- NERDTree -------------------
"  ファイル名指定の時にツリー非表示、それ以外は表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:set modifiable
:set write

nnoremap <S-A-}> gt
nnoremap <S-A-{> gT
map <C-n> <plug>NERDTreeTabsToggle<CR>
noremap <S-w> db
noremap <C-Home> gg
noremap <C-End> G
noremap <C-PageDown> <C-w>w
noremap <F12> :split<CR>
noremap <F11> :vsplit<CR>
"vnoremap <silent> <C-p> "0p<CR>

NeoBundleCheck
