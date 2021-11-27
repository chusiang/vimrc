" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: 01.vimrc.vim
"  Modified: 2018-04-14 02:29
"  Description: uncategorized config.
"  Reference: https://github.com/chusiang/vimrc/blob/master/_vim/01.vimrc.vim
" =============================================================================

" Built-in
" ========

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

set showcmd		  " Show (partial) command in status line.
set showmode	  " Show '-insert-' Mode at the lower left.
"set showmatch	" Show matching brackets.
"set ignorecase	" Do case insensitive matching
"set smartcase	" Do smart case matching

" Incremental search (is), with the fight that is looking to use search
" features. Default off
set incsearch

"set autowrite	" Automatically save before commands like :next and :make
"set hidden     " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set mouse=nv		" Enable mouse usage (Normal + Visual modes)


" Other
" =====

" auto cd curent dir. (for support some plugin #22)
autocmd BufEnter * silent! lcd %:p:h

set encoding=utf-8
set fileencodings=utf8
set hlsearch		" (hls) Hightlight in Search
set ignorecase	" (ic) Case sensitive searches
"set nobackup
set ruler	      "Show Row & Colume position

" move swap and backup files from your working directory.
if has('win32')
  set backupdir=/cygdrive/e/Cache
  set directory=/cygdrive/e/Cache
else
  set backupdir=/tmp
  set directory=/tmp
endif

" indent
" ------

set autoindent		" (ai)
set cindent
set expandtab		" Set Tab to Space.
set smartindent
set tabstop=2
set softtabstop=2	" Set Soft tab stop.
set shiftwidth=2	" Set Soft tab width.

" Mark `filetype indent on` for support the EditorConfig. #31
" filetype indent on

" Scroll
" ------

set scrolloff=3		" We keep 3 lines when scrolling .
"set scrolljump=5	" Jump 5 lines when scrolling.

" Wild Mode
" ---------

"set wildmode=full,list
"set wildmode=list:full
set wildmode=longest,list	" like bash completion. There was the same at the beginning of complement, rather than automatically fill in the name of the first complete.
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
set wildignore+=*.png,*.jpg,*.gif,*.svg,*.xpm
" set wildoptions
"set  winaltkeys=no

set wrap  " auto line break.

" - Do not redraw while running macros (much faster).
set lazyredraw

" - Don't make noise
"set noerrorbells

" Folding
" -------

set foldenable
set foldmethod=indent
set foldcolumn=1
set foldlevel=6

" save folds
if !isdirectory("view")
  " put view to tmp.
  silent !mkdir /tmp/vim-view/ > /dev/null 2>&1
  silent !ln -s /tmp/vim-view/ ~/.vim/view > /dev/null 2>&1
endif
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" disable sound on errors
" -----------------------

set visualbell
set noerrorbells
set t_vb=
set tm=500

" support Neobundle in fish
" -------------------------

set shell=/bin/bash
