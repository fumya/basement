set nocompatible
setlocal omnifunc=syntaxcomplete#Complete

" 基本設定
set shellslash                           " ファイル名の展開にスラッシュを使用
set showmode                             " 現在のモードを表示
set ruler                                " ルーラーの表示
syntax on                                " シンタックスハイライトを有効に設定
set tabstop=4 shiftwidth=4 softtabstop=0 " タブの表示設定
set expandtab                            " タブを空白文字に展開
set autoindent smartindent               " 自動インデント、スマートインデント
set guifont=MS_Gothic:h13

" 入力補助
set formatoptions+=m                     " 整形オプション、マルチバイト系を追加
set foldmethod=marker foldmarker={{{,}}} " 折り畳む種類

" 検索関連
set wrapscan                             " 最後まで検索したら最初に戻る
set incsearch                            " インクリメンタルサーチを行う
set hlsearch                             " 検索結果をハイライトする

" ファイル関連
set nobackup                             " バックアップを作成しない
set autoread                             " 外部エディタで書き換えられた場合、自動で読み直す
set noswapfile                           " スワップを作成しない
set hidden                               " 保存しないで他のファイルを表示することが出来るようにする

" 表示関連
set showmatch                            " 対括弧の表示をハイライト
set showcmd                              " コマンドをステータスラインに表示する
set number                               " 行番号を表示する
set nowrap                               " 画面幅で折り返さない
set sidescroll=1                         " 水平スクロールの刻み幅
set sidescrolloff=5                      " カーソルの右または左に表示する文字数
set list                                 " 不可視文字を表示する
set listchars=tab:>\ ,eol:<              " 不可視文字の表示方法
set title                                " タイトル表示
set scrolloff=5                          " カーソルの上または下に表示する行数

" ステータスライン関連
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 全角スペースの視覚化
highlight WastedSpace cterm=underline ctermfg=white guibg=white
match WastedSpace /　/

" insertモードで(ctrl+)hjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
