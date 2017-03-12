" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


syntax enable
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
"set hlsearch
"set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set smartindent
"set expandtab
set tabstop=4
set shiftwidth=4
set helplang=jp
set mouse=a
set paste
"colorscheme desert

" 不可視ファイルを表示する
let NERDTreeShowHidden = 1

" ツリーと編集領域を移動する
nmap <Leader><Tab> <C-w>w

if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
end


" カラースキーマを宣言する
colorscheme molokai
let g:airline_theme='molokai'
" Offset hue(HSV) of theme colors between -1.0 and 1.0 (By default, 0.0)
let g:airline#themes#onedark#hue = 0
" Offset saturation(HSV) of theme colors between -1.0 and 1.0 (By default, -0.05)
let g:airline#themes#onedark#saturation = -0.05
" Offset value(HSV) of theme colors between -1.0 and 1.0 (By default, 0.0)
let g:airline#themes#onedark#value = 0


" j/kによる移動を速くする
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" vim-monsterを有効にする
let g:neocomplete#sources#omni#input_patterns = {
\  'ruby': '[^. *\t]\.\w*\|\h\w*::'
\}
" エディタの分割方向を設定する
set splitright
set splitbelow

" 自動補完機能を有効にする
let g:neocomplete#enable_at_startup = 1

" ctagの設定
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
let g:auto_ctags = 1

