" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: 03.keymap.vim
"  Modified: 2018-03-18 23:15
"  Description: Cutsom the shortcut-key and keymap.
"  Reference: https://github.com/chusiang/vimrc/blob/master/_vim/03.keymap.vim
" =============================================================================

" <leader>
" --------

let mapleader = ","


" ESC
" ---

"imap <C-I>	<ESC>
"imap <C-O>	<ESC>
inoremap jj <ESC>


" Move one line to down and up
" ----------------------------

if has('gui_macvim')
  nmap <D-j>    :.m.+1<cr>
  nmap <D-k>    :.m.-2<cr>
  nmap <D-down> :.m.+1<cr>
  nmap <D-up>   :.m.-2<cr>
else
  nmap <A-j>    :.m.+1<cr>
  nmap <A-k>    :.m.-2<cr>
  nmap <A-down> :.m.+1<cr>
  nmap <A-up>   :.m.-2<cr>
endif


" Re-read vim Configure
" ---------------------

nmap <leader>s		:source $HOME/.vimrc <CR>


" quick quit vim
" --------------

nmap Z	:x <CR>


" list buffers files
" ------------------

"nmap <leader>l	:ls


" Save
" ----

cmap WW	:w <CR>


" Command mode
" ------------

"cmap <C-e> <end>
"cnoremap <C-b> <home>
"cnoremap <C-f> (history)


" Copy
" ----

if !has('gui_macvim')
  vmap <A-c>	"+y
endif
nmap <leader>y	y$

" Copy the characters under the cursor until the end.
imap <leader>y	<C-o>y$<ESC>


" Paste
" -----

if !has('gui_macvim')
  imap <A-v>	<ESC>"+pa
  nmap <A-v>	"+pa
endif
"nmap <leader>p	:set paste <CR>
"nmap <leader>np	:set nopaste <CR>


" Tabs
" ----

nmap <C-t>  :tabnew <CR>
nmap tj     :tabnext <CR>
nmap tk     :tabprev <CR>
nmap te     :Texplore <CR>

if has('gui_macvim')
  nmap <D-1>	:tabn1 <CR>
  nmap <D-2>	:tabn2 <CR>
  nmap <D-3>	:tabn3 <CR>
  nmap <D-4>	:tabn4 <CR>
  nmap <D-5>	:tabn5 <CR>
  nmap <D-6>	:tabn6 <CR>
  nmap <D-7>	:tabn7 <CR>
  nmap <D-8>	:tabn8 <CR>
  nmap <D-9>	:tabn9 <CR>
else
  nmap <A-1>	:tabn1 <CR>
  nmap <A-2>	:tabn2 <CR>
  nmap <A-3>	:tabn3 <CR>
  nmap <A-4>	:tabn4 <CR>
  nmap <A-5>	:tabn5 <CR>
  nmap <A-6>	:tabn6 <CR>
  nmap <A-7>	:tabn7 <CR>
  nmap <A-8>	:tabn8 <CR>
  nmap <A-9>	:tabn9 <CR>
endif


" Indent
" ------

imap <S-tab> <esc>m`<<``i
nmap <TAB> v>
nmap <S-TAB> v<
xnoremap <tab> >gv
vmap <tab> >gv
xnoremap <s-tab> <gv


" Scroll
" ------

"  - hide scroll of split windows mode.
"nmap +b		:set guioptions+=b <CR>
"nmap +l		:set guioptions+=L <CR>
"nmap +r		:set guioptions+=r <CR>
"nmap -b		:set guioptions-=b <CR>
"nmap -l		:set guioptions-=L <CR>
"nmap -r		:set guioptions-=r <CR>
nmap <F7>		:set guioptions+=mT <CR>
nmap <F8>		:set guioptions-=mT <CR>


" Switch the split window
" -----------------------

nmap <C-tab>	<C-w>w
imap <C-tab>	<C-o><C-w>w
nmap <C-h>		<C-w>h
nmap <C-j>		<C-w>j
nmap <C-k>		<C-w>k
nmap <C-l>		<C-w>l


" Folding
" -------

"inoremap <F2> <C-o>za
"nnoremap <F2> za
"onoremap <F2> <C-c>za
"vnoremap <F9> zf
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <space> zf


" Font Size
" ---------

if has('gui_macvim')
  nmap <leader>f0	:set guifont=Source\ Code\ Pro\ 14 <CR>
  nmap <leader>f`	:set guifont=Source\ Code\ Pro\ 10 <CR>
  nmap <leader>f1	:set guifont=Source\ Code\ Pro\ 12 <CR>
  nmap <leader>f2	:set guifont=Source\ Code\ Pro\ 14 <CR>
  nmap <leader>f3	:set guifont=Source\ Code\ Pro\ 16 <CR>
  nmap <leader>f4	:set guifont=Source\ Code\ Pro\ 20 <CR>
elseif has('win32')
  nmap <leader>f0	:set guifont=Consolas:h14 <CR>
  nmap <leader>f`	:set guifont=Consolas:h10 <CR>
  nmap <leader>f1	:set guifont=Consolas:h12 <CR>
  nmap <leader>f2	:set guifont=Consolas:h14 <CR>
  nmap <leader>f3	:set guifont=Consolas:h16 <CR>
  nmap <leader>f4	:set guifont=Consolas:h20 <CR>
else
  nmap <leader>f0	:set guifont=Source\ Code\ Pro\ 14 <CR>
  nmap <leader>f`	:set guifont=Source\ Code\ Pro\ 10 <CR>
  nmap <leader>f1	:set guifont=Source\ Code\ Pro\ 12 <CR>
  nmap <leader>f2	:set guifont=Source\ Code\ Pro\ 14 <CR>
  nmap <leader>f3	:set guifont=Source\ Code\ Pro\ 16 <CR>
  nmap <leader>f4	:set guifont=Source\ Code\ Pro\ 20 <CR>
endif


" Auto Completion
" ---------------

inoremap  <leader><tab> <C-x><C-p>

" auto completion the brackets
"inoremap ( ()<LEFT>
"inoremap < <><LEFT>
"inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

" Go to File
" ----------

" Remapping gf with open new tab.
nnoremap gf <C-W>gF

" HTML
" ====

" bold.
"autocmd FileType html,markdown imap <C-s-b> <ESC>bi<b><ESC>ea</b><ESC>F<i

" italic.
"imap <C-s-i> <ESC>bi<i><ESC>ea</i><ESC>F/hi

" link.
"imap <C-a> <ESC>bi<a href=""><ESC>ea</a><ESC>F>hi
"autocmd FileType html,markdown imap <C-s-a> <ESC>bi<a target="_blank" href=""><ESC>ea</a><ESC>F>hi

" strike.
"autocmd FileType html,markdown imap <C-s-d> <ESC>bi<strike><ESC>ea</strike><ESC>F<i

" center.
"autocmd FileType html,markdown imap <C-s-r> <ESC>bi<center><ESC>ea</center><ESC>F<i

" Comment.
"autocmd FileType html,markdown imap <C-s-g> <ESC>bi<span class="Comment"><ESC>ea</span><ESC>F>a# <ESC>f<i

" more of blogger.
"autocmd FileType html,markdown imap <C-s-z> <!--more-->


" Support the HHKB
" ================

" ~
cmap <S-ESC> ~
cmap <S-ESC> ~
inoremap <S-ESC> ~

" Cursor Move
" -----------

" insert mode
"imap <C-h> <left>
imap <C-b> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>
imap <C-f> <right>
imap <C-a> <home>
imap <C-e> <end>

" Command mode
" ------------

"cmap <C-h> <left>
cmap <C-b> <left>
cmap <C-j> <down>
cmap <C-k> <up>
cmap <C-l> <right>
cmap <C-f> <right>
cmap <C-a> <home>
cmap <C-e> <end>
cnoremap <C-x> <del>
