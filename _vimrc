" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: _vimrc
"  Modified: 2018-03-18 22:36
"  Description: main vimrc.
"  Reference: https://github.com/chusiang/vimrc/blob/master/_vimrc
" =============================================================================

" Support the Python 3
" --------------------

if has('mac')
  if has('python3')
    command! -nargs=1 Py py3 <args>
    set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.7/Python
    set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.7
  else
    command! -nargs=1 Py py <args>
    set pythondll=/usr/local/Frameworks/Python.framework/Versions/Current/Python
    set pythonhome=/usr/local/Frameworks/Python.framework/Versions/Current
  endif
endif


" dein Scripts
" ------------

if &compatible
  set nocompatible                                            " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/bundle')
  call dein#begin('$HOME/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here
  " -------------------------------

  "call dein#add('Shougo/vimshell.vim')
  "call dein#add('chriskempson/vim-tomorrow-theme')
  "call dein#add('flazz/vim-colorschemes')
  "call dein#add('mattn/emmet-vim')
  "call dein#add('nanotech/jellybeans.vim')
  "call dein#add('terryma/vim-multiple-cursors')
  "call dein#add('vadv/vim-chef')
  "call dein#add('vim-scripts/BBCode--Dahn')
  "call dein#add('vim-scripts/VST')
  "call dein#add('vim-scripts/bats.vim')
  "call dein#add('vim-scripts/phpfolding.vim', { 'rev': '3d5149e651' })"
  "call dein#add('vim-scripts/pythoncomplete')
  "call dein#add('wannesm/wmgraphviz.vim')
  "call dein#add('xu-cheng/brew.vim')
  call dein#add('Glench/Vim-Jinja2-Syntax')
  call dein#add('Valloric/YouCompleteMe', {'build': './install.py'})
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('Yggdroot/indentLine')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('chr4/nginx.vim')
  call dein#add('chusiang/vim-sdcv')
  call dein#add('chusiang/vimcdoc-tw')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('elzr/vim-json')
  call dein#add('gko/vim-coloresque')
  call dein#add('godlygeek/tabular')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('honza/vim-snippets')
  call dein#add('itspriddle/vim-jquery')
  call dein#add('kien/ctrlp.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('mileszs/ack.vim')
  call dein#add('othree/html5.vim')
  call dein#add('othree/yajs.vim')
  call dein#add('pearofducks/ansible-vim')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('rizzatti/dash.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('shime/vim-livedown')
  call dein#add('sirver/ultisnips')
  call dein#add('timcharper/textile.vim')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tpope/vim-ragtag')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-scripts/EnhCommentify.vim')
  call dein#add('vim-scripts/calendar.vim--Matsumoto')
  call dein#add('vim-scripts/matchit.zip')
  call dein#add('vim-scripts/mru.vim')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('vimwiki/vimwiki')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif


" Read other vim script, if available
" -----------------------------------

for CONFIG in split(glob('~/.vim/*.vim'), '\n')
   exe 'source' CONFIG
endfor
