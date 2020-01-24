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
"NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" ruby, rails用
NeoBundle 'taichouchou2/vim-rails'

NeoBundle 'Shougo/denite.nvim'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'basyura/unite-rails'
NeoBundle 'tpope/vim-endwise'

" キーワード移動
NeoBundle 'ruby-matchit'
NeoBundle 'nathanaelkane/vim-indent-guides'
" NERDTree ハイライト
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
" html.slim 用プラグイン
NeoBundle 'slim-template/vim-slim'
" タブ表示
NeoBundle 'vim-scripts/buftabs'
" ctrl + P
NeoBundle "ctrlpvim/ctrlp.vim"
" gitコマンドが使える
NeoBundle 'tpope/vim-fugitive'
" git guttar
NeoBundle 'airblade/vim-gitgutter'
" colorscheme
NeoBundle 'bcicen/vim-vice'
" undoのdiff機能
NeoBundle 'mbbill/undotree'
" localmethod check
NeoBundle 'vim-syntastic/syntastic'
" vim devicons with nerdfornt
"NeoBundle 'ryanoasis/vim-devicons'
" method jump
"NeoBundle 'szw/vim-tags'
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

syntax on
set background=dark
"colorscheme badwolf
"colorscheme molokai
"colorscheme bluewery
colorscheme vice

" 文字色の色の明るさを抑える
" highlight Normal ctermbg=none
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
set nowritebackup
set tags=$HOME/ruby.tags
" 補完をON
let g:neocomplcache_enable_at_startup = 1
" ---------- Buftab -------------------
"let g:buftabs_in_statusline=1 " バッファタブをステータスラインに表示
"let g:buftabs_active_highlight_group="Visual" "現在のバッファをハイライト
" ステータスライン
set statusline=%=\ [%F][%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
" ステータスラインを常に表示
set laststatus=2
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
" ---------- NERDTree -------------------
"  ファイル名指定の時にツリー非表示、それ以外は表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:set modifiable
:set write

" ---------- ctrlp -------------------
" キャッシュディレクトリ
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" キャッシュを終了時に削除しない
let g:ctrlp_clear_cache_on_exit = 0
" 遅延再描画
let g:ctrlp_lazy_update = 1
" ルートパスと認識させるためのファイル
"let g:ctrlp_root_markers = ['Gemfile', 'pom.xml', 'build.xml']
" CtrlPのウィンドウ最大高さ
let g:ctrlp_max_height = 20
" 最大ファイル数の制限をなくさないと全てのファイルが検索にひっかからない
let g:ctrlp_max_files = 0
" 無視するディレクトリ
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|bundle)$',
  \ 'file': '\v\.(exe|so|dll|scss|css)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" vim-railsのエラー解消
let g:neocomplcache_force_overwrite_completefunc=1
" 透過のための設定
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
" powerline
let g:airline_powerline_fonts = 1
nnoremap <S-A-}> gt
nnoremap <S-A-{> gT
map <C-n> <plug>NERDTreeToggle<CR>
noremap <S-w> db
noremap <C-Home> gg
noremap <C-End> G
noremap <C-PageDown> <C-w>w
noremap <F12> :split<CR>
noremap <F11> :vsplit<CR>
noremap <F1> :NERDTreeToggle<CR>
noremap <F5> :UndotreeToggle<CR>
"vnoremap <silent> <C-p> "0p<CR>
nnoremap ut :<C-u>Unite tab<CR>

NeoBundleCheck
