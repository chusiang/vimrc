" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: plugin-list.vim
"  Modified: 2018-03-18 15:10
"  Description: plugins list of chusiang.
"  Reference: https://github.com/chusiang/vimrc/blob/master/_vim/plugin-list.vim
" =============================================================================

" Enable
" ======

" Valloric/YouCompleteMe (code-completion)
" ----------------------------------------

let g:ycm_filetype_blacklist = {
  \ 'tagbar':     1,
  \ 'qf' :        1,
  \ 'notes':      1,
  \ 'markdown':   1,
  \ 'unite':      1,
  \ 'text':       1,
  \ 'vimwiki':    1,
  \ 'gitcommit':  1,
  \}
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


" airblade/vim-gitgutter
" ----------------------

nmap <leader>g :GitGutterToggle<CR>

" jump next/previous bunks.
nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk


" chusiang/sdcv
" -------------

nmap <leader>w :call SearchWord()<CR>


" chusiang/vimcdoc-tw
" --------------------

"set helplang=tw


" easymotion/vim-easymotion
" -------------------------

" none.


" elzr/vim-json
" -------------

let g:indentLine_concealcursor=""


" editorconfig/editorconfig-vim
" -----------------------------

" let g:EditorConfig_verbose = 1


" kien/ctrlp.vim
" --------------

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|cfg|desktop)$',
  \ 'link': 'some_bad_symbolic_links',
  \}
let g:ctrlp_user_command = {
  \ 'types': {
  \   1: ['.git', 'cd %s && git ls-files -c -o'],
  \   2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'find %s -type f'
  \}

" integration the Buffer and MRU.
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRU<CR>


" majutsushi/tagbar
" ------------------

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
nmap <leader>t :<C-u>TagbarToggle<CR>

if has('win32')
  let g:tagbar_ctags_bin='C:\ctags.exe'
endif

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
      \ 'h:headings',
    \ ],
  \ 'sort' : 0
\ }

" mileszs/ack.vim
" ---------------

cnoreabbrev Ack Ack!
cnoreabbrev ag Ack!
cnoreabbrev aG Ack!
cnoreabbrev Ag Ack!
cnoreabbrev AG Ack!

if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif


" pearofducks/ansible-vim
" -----------------------

au BufRead,BufNewFile */*ansible/*.yml   set filetype=yaml.ansible
au BufRead,BufNewFile */*playbooks/*.yml set filetype=yaml.ansible


" plasticboy/vim-markdown
" -----------------------

" Disable folding.
let g:vim_markdown_folding_disabled=1

" Disable concealing some syntax.
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Enable LaTeX math.
let g:vim_markdown_math = 1

" Enable YAML Front Matter.
let g:vim_markdown_frontmatter = 1


" scrooloose/nerdtree
" -------------------

" Open NERDTree at right window.
let g:NERDTreeWinPos = "right"

nmap <leader>e :NERDTreeToggle<CR>


" shime/vim-livedown
" ------------------

nmap gm :LivedownToggle<CR>


" sirver/ultisnips
" ----------------

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips_my"]


" Ragtag
" ------

" Mapping       Changed to  (cursors = ^)   ~
" <C-X><Space>  <foo>^</foo>              *ragtag-CTRL-X_<Space>*
" <C-X><CR>     <foo>\n^\n</foo>          *ragtag-CTRL-X_<CR>*


" vim-airline/vim-airline
" -----------------------

set laststatus=2
let g:airline_theme = "base16_tomorrow_night_eighties"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline_powerline_fonts = 1

" mattn/calendar-vim
" ------------------

let g:calendar_diary=$HOME.'/vcs/diary'
let g:calendar_mark = 'right'
let g:calendar_weeknm = 1

" Show calendar in a vertical split at the right site.
nmap <leader>l :CalendarVR<CR>

" mru.vim
" -------

let MRU_Max_Entries = 1000


" vim-scripts/vimwiki
" -------------------

" let g:vimwiki_list = [
"   \ {
"   \   'path': '~/vimwiki/',
"   \   'index': 'index',
"   \   'path_html': '~/vimwiki/public_html/',
"   \   'syntax': 'markdown',
"   \   'ext': '.wiki'
"   \ },
"   \ {
"   \   'path': '~/vimwiki/diary/',
"   \   'syntax': 'markdown',
"   \   'ext': '.wiki'
"   \ }]

" let g:vimwiki_list = [
"   \ {
"   \   'path': '~/Google\ Drive/cs.obsidian/1.Note/',
"   \   'syntax': 'markdown',
"   \   'ext': '.md'
"   \ }]

" default browser.
"
"let g:vimwiki_browsers=['/usr/bin/firefox']

" Use vimwiki filetype only for vimwiki files.
" - https://github.com/vimwiki/vimwiki/issues/95#issuecomment-68873394
"
" let g:vimwiki_global_ext = 0

" keymap.
"
" autocmd BufRead,BufNewFile *.wiki noremap	<leader>wtb :VimwikiTable <CR>
" autocmd BufRead,BufNewFile *.wiki noremap	<leader>wj  :VimwikiDiaryNextDay <CR>
" autocmd BufRead,BufNewFile *.wiki noremap	<leader>wk  :VimwikiDiaryPrevDay <CR>
" autocmd BufRead,BufNewFile *.wiki noremap	<leader>wo  <C-Space> <CR>

" Syntax.
"
" autocmd BufNewFile,BufReadPost ~/vimwiki/* set filetype=markdown


" Syntastic
" ---------

let g:syntastic_mode_map = {
  \ "mode": "passive"
  \ }

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1

if has('gui')
  let g:syntastic_check_on_open = 1
else
  let g:syntastic_check_on_open = 0
endif

let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ignore files of Ansible Roles.
let g:syntastic_ignore_files = ['.*roles/']

nmap <leader>q :SyntasticCheck<CR>
nmap <leader>r :SyntasticReset<CR>

" Disable
" =======

" mattn/emmet-vim
" ---------------

"let g:user_emmet_install_global = 0
"let g:user_emmet_mode='n'
"let g:user_emmet_leader_key='<C-Q>'
"autocmd FileType html,css EmmetInstall


" terryma/vim-multiple-cursors (Sublime Text like style multiple selections)
" --------------------------------------------------------------------------

"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-m>'
"let g:multi_cursor_skip_key='<C-q>'
"let g:multi_cursor_quit_key='<Esc>'


" vadv/vim-chef
" -------------

"autocmd FileType ruby,eruby set filetype=ruby.eruby.chef


" VST (Vim reStructured Text)
" ---------------------------

" plugin of vst default export html.
"let g:vst_write_export=1


" vim-scripts/phpfolding.vim
" --------------------------

"autocmd FileType php noremap <F4> :!php -l % <CR>
"autocmd FileType php noremap <F5> <Esc>:EnableFastPHPFolds<Cr>
"autocmd FileType php noremap <F6> <Esc>:EnablePHPFolds<Cr>
"autocmd FileType php noremap <F7> <Esc>:DisablePHPFolds<Cr>


" wannesm/wmgraphviz.vim
" ----------------------

"let g:WMGraphviz_viewer='xdg-open'
"let g:WMGraphviz_output="png"

"nmap <leader>lp :GraphvizCompile<CR>
"nmap <leader>ll :GraphvizCompilePDF<CR>
"nmap <leader>lv :GraphvizShow<CR>
"nmap <leader>li :GraphvizInteractive<CR>

