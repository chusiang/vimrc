..
  ============================================================
   Author: 凍仁翔 / chusiang (at) drx.tw
   Blog: http://note.drx.tw
   Filename: README.rst
   Modified: 2016-10-12 10:57
  =========================================================== 

================
Vimrc #chusiang
================

:Author:
    凍仁翔 (chusiang)
:Build Date:
    2012/10/31
:Blog:
    `<http://note.drx.tw>`_
:forked from:
    `@Aminzai <https://github.com/aminzai>`_/`vimrc <https://github.com/aminzai/vimrc>`_
:plugins count:
    69

.. image:: https://lh6.googleusercontent.com/-jkam53cqxyk/Uo95ykP0eVI/AAAAAAAAWl4/ypRPFV90ul0/s800/2013-11-22-vim-chusiang.png
   :width: 720 px
   :height: 425 px
   :scale: 100

1. Introduction
========================================

This verison use NeoBundle that can get the newest vim script use eazy way.

2. Require
========================================

#. Git
#. Network
#. make (Unix Like Only)
#. Vim
#. Curl

3. Installation
========================================

Linux & Mac OSX
----------------

- Get my vimrc settings with Git.

::

    git clone https://github.com/chusiang/vimrc.git

- Install.

::

    cd vimrc && make

windows
---------

::

    WindowsInstall.bat    # No maintained.

4. HowTo
========================================

4.1. Update
----------------------------------------

#. run command at Vim (command mode).

::
    
    NeoBundleUpdate

4.2. Backup
----------------------------------------

This version can auto backup orginal config before install.

Backup directory: ${HOME}/.vim_back-${data} [#]_

::

    make backup

4.2.1. Clean backup 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    make clean-backup-file

.. [#] Just support Unix-like operating-system.

5. Bundled Plugins
========================================

5.1. Plugins Management
----------------------------------------

#. [X] `neobundle.vim`_ - It`s a Vim plugin manager based on `Vundle`_.
#. [X] `vimproc.vim`_ - setup eobundle.vim with *make -f Makefile*.

.. _Vundle: https://github.com/gmarik/vundle
.. _neobundle.vim: https://github.com/Shougo/neobundle.vim
.. _vimproc.vim: https://github.com/Shougo/vimproc.vim

5.2. File Management
----------------------------------------

#. [X] `ctrlp.vim`_ - Full path fuzzy file, buffer, mru, tag, ...... finder for Vim.
#. [X] `mru.vim`_ - provides an easy access to a list of recently opened/edited files.
#. [X] `nerdtree`_ - explore your filesystem and to open files and directories.
#. [X] `nerdtree-git-plugin`_ - A plugin of NERDTree showing git status.

.. _ctrlp.vim: https://github.com/kien/ctrlp.vim
.. _mru.vim: https://github.com/vim-scripts/mru.vim
.. _nerdtree: https://github.com/scrooloose/nerdtree
.. _nerdtree-git-plugin: https://github.com/Xuyuanp/nerdtree-git-plugin

5.3. Development
----------------------------------------

#. [X] `EditorConfig Vim Plugin`_ - `EditorConfig <http://editorconfig.org/>`_ plugin for Vim.
#. [X] `EnhCommentify.vim`_ - comment lines in a program.
#. [ ] `SrcExpl`_ - SrcExpl (Source Explorer) is a source code explorer (need `Trinity`_).
#. [X] `Vim Auto Complete Popup`_ - Automatic trigger complete popup menu (need `L9`_).
#. [ ] `YouCompleteMe`_ - A code-completion engine for Vim.
#. [X] `ag.vim`_ - run ag in vim.
#. [X] `dash.vim`_ - Search Dash.app from Vim (Mac only).
#. [X] `emmet-vim`_ - `emmet <http://emmet.io>`_ for vim.
#. [X] `indentLine`_ - Display the indention levels with thin vertical lines.
#. [X] `livedown.vim`_ - Vim plugin for `livedown_` (Live Markdown previews for your favorite editor).
#. [X] `matchit.zip`_ - allows you to configure % to match more than just single characters.
#. [X] `surround.vim`_ - Delete/change/add parentheses/quotes/XML-tags/much more with ease.
#. [X] `syntastic`_ - Syntax checking plugins of C, C++, CSS, Go, HTML, Java, JavaScript, JSON, PHP, Python, reStructuredText, Ruby, SASS, VimL, zsh ... `more <https://github.com/scrooloose/syntastic#introduction>`_.
#. [X] `tagbar`_ - Display tags of the current file ordered by scope.
#. [X] `taglist.vim`_ - Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).
#. [X] `vim-ragtag`_ - A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more.
#. [X] `vim-snipmate`_ - auto-completion with menu. (need `vim-addon-mw-utils`_, `tlib_vim`_, `vim-snippets`_)
#. [ ] `zeavim.vim`_ - Zeavim allows to use the offline documentation browser Zeal from Vim.

.. _Trinity: https://github.com/wesleyche/Trinity
.. _L9: https://github.com/vim-scripts/L9
.. _EditorConfig Vim Plugin: https://github.com/editorconfig/editorconfig-vim
.. _EnhCommentify.vim: http://www.vim.org/scripts/script.php?script_id=23
.. _SrcExpl: https://github.com/wesleyche/SrcExpl
.. _Vim Auto Complete Popup: https://github.com/othree/vim-autocomplpop
.. _YouCompleteMe: https://github.com/Valloric/YouCompleteMe
.. _ag.vim: https://github.com/rking/ag.vim
.. _dash.vim: https://github.com/rizzatti/dash.vim
.. _emmet-vim: https://github.com/mattn/emmet-vim
.. _indentLine: https://github.com/Yggdroot/indentLine
.. _livedown.vim: https://github.com/shime/vim-livedown
.. _livedown: https://github.com/shime/livedown
.. _matchit.zip: https://github.com/vim-scripts/matchit.zip
.. _surround.vim: https://github.com/tpope/vim-surround
.. _syntastic: https://github.com/scrooloose/syntastic
.. _tagbar: https://github.com/majutsushi/tagbar
.. _taglist.vim: https://github.com/vim-scripts/taglist.vim
.. _tlib_vim: https://github.com/tomtom/tlib_vim
.. _vim-addon-mw-utils: https://github.com/MarcWeber/vim-addon-mw-utils
.. _vim-ragtag: https://github.com/tpope/vim-ragtag
.. _vim-snipmate: https://github.com/garbas/vim-snipmate
.. _vim-snippets: https://github.com/honza/vim-snippets
.. _zeavim.vim: https://github.com/KabbAmine/zeavim.vim

5.3.3. F2E (Front End Engineer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `html5.vim`_ - HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim.

.. _html5.vim: https://github.com/othree/html5.vim

5.3.1. Git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `fugitive.vim`_ - a Git wrapper so awesome.
#. [ ] `gitv`_ - gitv is a 'gitk clone' plugin for the text editor Vim. (need `fugitive.vim`_)
#. [X] `vim-gitgutter`_ - which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed.

.. _fugitive.vim: https://github.com/tpope/vim-fugitive
.. _gitv: https://github.com/gregsexton/gitv
.. _vim-gitgutter: https://github.com/airblade/vim-gitgutter

5.3.2. PHP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `php.vim`_ - Indent for php.
#. [X] `phpfolding.vim`_ - fold PHP functions and/or classes.

.. _php.vim: http://www.vim.org/scripts/script.php?script_id=346>
.. _phpfolding.vim: https://github.com/vim-scripts/phpfolding.vim

5.3.4. Python
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `pythoncomplete`_ - Python Omni Completion.

.. _pythoncomplete: https://github.com/vim-scripts/pythoncomplete

5.4. Syntax
----------------------------------------

#. [X] `BBCode--Dahn`_ - Syntax highlighting for BBCode.
#. [X] `Dockerfile.vim`_ - Vim syntax file & snippets for Docker's Dockerfile.
#. [X] `Vim-Jinja2-Syntax`_ - The Jinja2 syntax file for vim with the ability to detect either HTML or Jinja.
#. [X] `ansible-vim`_ - Ansible syntax highlighting and common filetypes.
#. [X] `bats.vim`_ - Syntax highlighting for Bats (Bash Automated Testing System).
#. [X] `brew.vim`_ - Vim Syntax for Homebrew formulae.
#. [X] `c.vim`_ - C/C++ IDE - Write and run programs. Insert statements, idioms, comments etc.
#. [X] `css3`_ - css3 syntax for vim.
#. [X] `django.vim`_ - Syntax highlighting for Django templates.
#. [X] `jQuery`_ - Syntax file for jQuery.
#. [X] `nginx.vim`_ - highlights configuration files for nginx.
#. [X] `python.vim--Vasiliev`_ - Enhanced version of the python syntax highlighting script.
#. [ ] `rest.vim`_ - A reStructuredText syntax mode.
#. [ ] `vim-chef`_ - Vim plugins for chef.
#. [X] `vim-coloresque`_ - css/less/sass/html color preview for vim.
#. [X] `vim-css-color`_ - Highlight colors in css files.
#. [X] `vim-css3-syntax`_ - Add CSS3 syntax support to Vim's built-in syntax/css.vim.
#. [X] `vim-javascript-syntax`_ - Improved Highlight for Ajax, DOM and Browser Objects, Methods and Properties.
#. [X] `vim-markdown`_ - Syntax highlighting and matching rules for Markdown. (need `Tabular`_)
#. [X] `vim-tmux`_ - vim plugin for tmux.conf.

.. _BBCode--Dahn: https://github.com/vim-scripts/BBCode--Dahn
.. _Dockerfile.vim: https://github.com/ekalinin/Dockerfile.vim
.. _Tabular: https://github.com/godlygeek/tabular
.. _Vim-Jinja2-Syntax: https://github.com/Glench/Vim-Jinja2-Syntax
.. _ansible-vim: https://github.com/pearofducks/ansible-vim
.. _bats.vim: https://github.com/vim-scripts/bats.vim
.. _brew.vim: https://github.com/xu-cheng/brew.vim
.. _c.vim: https://github.com/vim-scripts/c.vim
.. _css3: https://github.com/vim-scripts/css3
.. _django.vim: https://github.com/jgb/django.vim
.. _jQuery: http://www.vim.org/scripts/script.php?script_id=2416
.. _nginx.vim: https://github.com/vim-scripts/nginx.vim
.. _python.vim--Vasiliev: https://github.com/vim-scripts/python.vim--Vasiliev
.. _rest.vim: http://www.vim.org/scripts/script.php?script_id=973
.. _vim-chef: https://github.com/vadv/vim-chef
.. _vim-coloresque: https://github.com/gorodinskiy/vim-coloresque
.. _vim-css-color: https://github.com/skammer/vim-css-color
.. _vim-css3-syntax: https://github.com/hail2u/vim-css3-syntax
.. _vim-javascript-syntax: https://github.com/othree/vim-javascript-syntax
.. _vim-markdown: https://github.com/plasticboy/vim-markdown
.. _vim-tmux: https://github.com/tmux-plugins/vim-tmux

5.5. Themes
----------------------------------------

#. [ ] `Amy.vim`_ - A colorscheme based on 'amy' sublime text 2 color theme.
#. [X] `jellybeans.vim`_ - A colorful, dark color scheme for vim.
#. [ ] `vim-colorschemes`_ - one stop shop for vim colorschemes.
#. [ ] `vim-powerline`_ - better-looking, more functional vim statuslines.
#. [ ] `vim-tomorrow-night`_ - Tomorrow Theme mirror.
#. [X] `Apprentice`_ - A dark, low-contrast, Vim colorscheme.
#. [X] `Tomorrow Theme`_ - The precursor to Base16 Theme.
#. [X] `vim-airline`_ - Lean & mean status/tabline for vim that's light as air.

.. _Amy.vim: https://github.com/awinecki/amy-vim-coloscheme
.. _Apprentice: https://github.com/romainl/Apprentice
.. _Tomorrow Theme: https://github.com/chriskempson/tomorrow-theme
.. _jellybeans.vim: https://github.com/nanotech/jellybeans.vim
.. _vim-airline: https://github.com/bling/vim-airline
.. _vim-colorschemes: https://github.com/flazz/vim-colorschemes
.. _vim-powerline: https://github.com/Lokaltog/vim-powerline
.. _vim-tomorrow-night: https://github.com/mukiwu/vim-tomorrow-night

5.6. Other
----------------------------------------

#. [X] `calendar.vim`_ - The script of create calender window and don`t use the `cal`.
#. [X] `evervim`_ - edit evernote with markdown at vim.
#. [ ] `gsession.vim`_ - Vim Session Plugin.
#. [ ] `numbers.vim`_ - a plugin for intelligently toggling line numbers.
#. [X] `riv.vim`_ - reStructured Text in Vim.
#. [X] `vim-easymotion`_ - It takes the <number> out of <number>w or <number>f{char} by highlighting all possible choices and allowing you to press one key to jump directly to the target.
#. [X] `vim-multiple-cursors`_ - use multiple cursors like Sublime Text editor.
#. [X] `vim-sdcv`_ - Searching word with sdcv at Vim.
#. [X] `vimcdoc-tw`_ - Vimcdoc of Traditional Chinese.
#. [X] `vimwiki`_ - Personal Wiki for Vim.
#. [X] `wmgraphviz.vim`_ - Vim plugin for Graphviz dot.
#. [X] `xterm-color-table.vim`_ - All 256 xterm colors with their RGB equivalents, right in Vim!

.. _calendar.vim: https://github.com/vim-scripts/calendar.vim
.. _evervim: https://github.com/kakkyz81/evervim
.. _gsession.vim: https://github.com/c9s/gsession.vim
.. _numbers.vim: https://github.com/myusuf3/numbers.vim
.. _riv.vim: https://github.com/Rykka/riv.vim
.. _vim-easymotion: https://github.com/easymotion/vim-easymotion
.. _vim-multiple-cursors: https://github.com/terryma/vim-multiple-cursors
.. _vim-sdcv: https://github.com/chusiang/vim-sdcv
.. _vimcdoc-tw: https://github.com/chusiang/vimcdoc-tw
.. _vimwiki: http://code.google.com/p/vimwiki
.. _wmgraphviz.vim: https://github.com/wannesm/wmgraphviz.vim
.. _xterm-color-table.vim: https://github.com/guns/xterm-color-table.vim

6. File Structure
========================================

::

    ├── ctags.exe                           # ctags.exe for Windows.
    ├── _gvimrc                             # GVim setting (ln to _vimrc).
    ├── Makefile                            # Setup on GNU/Linux.
    ├── README.rst
    ├── _vim
    │   ├── colors
    │   │   ├── ......
    │   │   ├── fu.vim                      # Default colorschemes.
    │   │   ├── ......
    │   │   ├── jellybeans.vim
    │   │   └── ......
    │   ├── plugin-list.vim                 # NeoBundle settings.
    │   └── vimrc.d
    │       ├── abbreviation.vim            # Abbreviation list.
    │       ├── blogger-template-fold.vim
    │       ├── folding-html-php.vim.bak
    │       ├── function.vim                # Custon function.
    │       ├── im-switch.vim.bak
    │       ├── keymap.vim                  # Custon mapping.
    │       ├── php-funclist.txt
    │       ├── themes.vim                  # GUI, Theme settings.
    │       ├── title.vim                   # Copyright settings.
    │       └── vimrc.vim                   # Other settings.
    ├── _vimrc                              # Loading '_vim/vimrc.d/*.vim'.
    ├── _vimrc.win32                        # vimrc for Windows.
    └── WindowsInstall.bat                  # Setup on Windows. 

7. Vimrc List
========================================

Sort list (A-Z, a-z).

#. `Amix`_
#. `Beata Lin`_
#. `Chu-Siang Lai`_
#. `CrBoy`_
#. `Denny Huang`_
#. `Eddie Kao`_
#. `Jerry Lee`_
#. `Josephj`_
#. `Kang-min Wang`_
#. `Mosky`_
#. `Muki Wu`_
#. `Sammy Lin`_
#. `Vgod`_
#. `defionscode`_
#. `headhsu2568`_
#. `joe di`_
#. `jsleetw`_
#. `mrmoneyc`_
#. `othree`_
#. `ssarcandy`_
#. `toomore`_
#. `weitsai`_
#. `wi1d5ky`_
#. `xinsuiyuer`_

.. _Amix: https://github.com/amix/vimrc
.. _Beata Lin: https://github.com/beata/vimrc
.. _Chu-Siang Lai: https://github.com/chusiang/vimrc
.. _CrBoy: https://github.com/crboy/vimrc
.. _Denny Huang: https://github.com/denny0223/.vim
.. _Eddie Kao: https://github.com/kaochenlong/eddie-vim
.. _Jerry Lee: https://github.com/akitaonrails/vimfiles
.. _Josephj: https://github.com/josephj/vimrc
.. _Kang-min Wang: https://github.com/aminzai/vimrc
.. _Mosky: https://github.com/moskytw/mosky.vim
.. _Muki Wu: https://github.com/mukiwu/vim-setting
.. _Sammy Lin: https://github.com/SammyLin/vimrc
.. _Vgod: https://github.com/vgod/vimrc
.. _defionscode: https://github.com/defionscode/dotfiles/blob/master/.vimrc
.. _headhsu2568: https://github.com/headhsu2568/vimrc/tree/mba
.. _joe di: https://github.com/joedicastro/dotfiles/tree/master/vim
.. _jsleetw: https://github.com/jsleetw/MyDotFiles/tree/master/.vim
.. _mrmoneyc: https://github.com/mrmoneyc/vimcfg
.. _othree: https://github.com/othree/rc/blob/master/home/.vimrc
.. _ssarcandy: https://github.com/SSARCandy/ssarcandy-vim
.. _toomore: https://github.com/toomore/toomore.vim
.. _weitsai: https://github.com/weitsai/vim
.. _wi1d5ky: https://github.com/wi1d5ky/myConfig/blob/master/.vimrc
.. _xinsuiyuer: https://github.com/xinsuiyuer/.vimrc

