" Hwrdy's init.vim

" Use vim plug
call plug#begin('~/.vim/plugged')

" Vim environment
Plug 'bling/vim-airline'
Plug 'fisadev/fisa-vim-colorscheme' " Terminal Vim with 256 colors colorscheme

" Tool
"Plug 'terryma/vim-multiple-cursors' " <C-n>
Plug 'junegunn/vim-easy-align'      " gaip, vipga
Plug 'Lokaltog/vim-easymotion'      " ,, hjkl
Plug 'vim-scripts/matchit.zip'      " % jump to corresponding ] }
Plug 'scrooloose/nerdcommenter'     " ,cc ,cm ,cu ,space
Plug 'scrooloose/nerdtree'          " F10
"Plug 'kshenoy/vim-signature'        " m[a-z]:mark, '[z-z]:jump
Plug 'kien/ctrlp.vim'               " <C-p>
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'terryma/vim-expand-region'    " v,V
"Plug 'kien/tabman.vim'              " tablist panel , leader mt/mf
Plug 'Townk/vim-autoclose'          " Auto close
Plug 't9md/vim-choosewin'           " Windows chooser, ``
"Plug 'sjl/gundo.vim'                " undo list  F10
"Plug 'dyng/ctrlsf.vim'              " ctrl shift find
"Plug 'mattn/emmet-vim'              " <C-z>,

" syntax helper
Plug 'othree/html5.vim'
Plug 'othree/xml.vim'
Plug 'Yggdroot/indentLine'
"Plug 'mtscout6/vim-cjsx'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim',
Plug 'othree/es.next.syntax.vim'
"Plug 'tpope/vim-haml'
Plug 'valloric/MatchTagAlways'

" Complte
"Plug 'marijnh/tern_for_vim'
"Plug 'L9'
"Plug 'vim-scripts/AutoComplPop'
"Plug 'othree/vim-autocomplpop'
"Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }


Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
" Plug 'msanders/snipmate.vim'
Plug 'garbas/vim-snipmate'          " <tab>
Plug 'airblade/vim-gitgutter'       " GitGutterToggle
Plug 'git@github.com:Hwrdy/vim-react-snippets-es6.git'



" Style
Plug 'wombat256.vim'
Plug 'ap/vim-css-color'
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'othree/csscomplete.vim'
"Plug 'juvenn/mustache.vim'
"Plug 'mustache/vim-mustache-handlebars'

" All of your Plugins must be added before the following line
call plug#end()



syntax on
filetype on                 " Enable filetype detection
filetype indent on          " Enable filetype-specific indenting
filetype plugin on          " Enable filetype-specific plugins

colorscheme wombat256mod

set nocompatible
set display+=lastline
set nowrap
set showtabline=2           " always show tab line
set t_Co=256
set bs=2                    " allow backspacing over everything in insert mode
set history=50              " keep 50 lines of command line history
set ruler                   " show the cursor position all the time
set nu
set nuw=5                   " width
set title
set wildmenu
set tabstop=2
set modeline
set modelines=2

" Replace tab with 2 spaces.
set expandtab
set softtabstop=2
set shiftwidth=2

set hlsearch                " search highlighting
set incsearch               " incremental search
set showmatch               " Cursor shows matching ) and }
set showmode                " Show current mode
set autoindent              " auto indentation
set smartindent
set cindent
set nobackup                " no *~ backup files
set ignorecase              " ignore case when searching
set smartcase               " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab                " insert tabs on the start of a line according to context
set foldmethod=marker
set backspace=indent,eol,start whichwrap+=<,>,[,]
set hidden
set nobomb

let mapleader = ","

" Status Line
set laststatus=2

" Always use utf-8 encoding.
set fileencoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8

" Set tab settings.
highlight TabLine ctermbg=blue
highlight TabLineFill ctermbg=green
highlight TabLineSel ctermbg=red


" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



" Set cursor line , Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Remap ESC
map! ;; <Esc> " map ;; to Esc "

" Tern of vim -----------------------------
let g:tern_show_argument_hints = 'on_hold'
set completeopt-=preview


" Window Chooser ------------------------------
" mapping
nmap ``  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1



" Airline ------------------------------
let g:airline_powerline_fonts = 0
" let g:airline_theme = 'bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" Easy Align -------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Multiple Cursors -----------------------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


" EasyMotion ----------------------
let g:EasyMotion_smartcase = 1
" left, up, bottom, right
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" repeat
map <Leader><leader>. <Plug>(easymotion-repeat)


" NERD Commentor --------------------------
let g:NERDSpaceDelims=1


"region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" vim-jsx
let g:jsx_ext_required = 0


" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx' : 1,
    \}


" TabMan ------------------------------
" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'


" CtrlSF ----------------------------------
nmap     <Leader>ff <Plug>CtrlSFPrompt
vmap     <Leader>ff <Plug>CtrlSFVwordPath
vmap     <Leader>fF <Plug>CtrlSFVwordExec
nmap     <Leader>fn <Plug>CtrlSFCwordPath
nmap     <Leader>fp <Plug>CtrlSFPwordPath
nnoremap <Leader>fo :CtrlSFOpen<CR>
nnoremap <Leader>ft :CtrlSFToggle<CR>
inoremap <Leader>ft <Esc>:CtrlSFToggle<CR>


" deoplete.
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

" Emmet
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode."

" Autoclose ------------------------------
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}


" ignore node_modules for ctrlp_custom_ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store|git'


" SnipMate --------------------------------
au BufRead *.js set ft=javascript.html
au BufNewFile *.js set ft=javascript.html

" au BufRead *.jsx set ft=javascript.html
" au BufNewFile *.jsx set ft=javascript.html

au BufRead *.es6 set ft=javascript.html
au BufNewFile *.es6 set ft=javascript.html

"Indent Guide ----------------------------
let g:indentLine_color_term = 239
let g:indentLine_faster = 1

"" keypad
"" http://vim.wikia.com/wiki/PuTTY_numeric_keypad_mappings
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Op 0
imap <Esc>On .
imap <Esc>OQ /
imap <Esc>OR *
imap <Esc>Ol +
imap <Esc>OS -



" Set F1-F12 shortcut keys.
" " NERDTree
nnoremap <silent> <F2> :NERDTree<CR>
let NERDTreeShowBookmarks  = 0
let g:nerdtree_tabs_focus_on_files = 1

" Before copy
nnoremap <silent> <F7> :set nu<CR> :GitGutterToggle<CR> :IndentLinesToggle<CR>
nnoremap =<F7> :set nu<CR> :GitGutterToggle<CR> :IndentLinesToggle<CR>

nnoremap <silent> <F8> :set nonu<CR> :GitGutterToggle<CR> :IndentLinesToggle<CR>
nnoremap =<F8> :set nonu<CR> :GitGutterToggle<CR> :IndentLinesToggle<CR>

" Gundo --------
nnoremap <F10> :GundoToggle<CR>

" Set Paste mode
nnoremap <silent> <F12> :set paste<CR>
nnoremap =<F12> :set nopaste<CR>


" Coffee
" autocmd FileType coffee set ts=2 sw=2 sts=2

" CSS complete
 autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

" Activate scss.vim
au BufRead,BufNewFile *.scss set filetype=scss
" " Removing tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
" Replace tab to spaces.
au BufWrite * :retab
" Set auto commands.
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \   exe "normal g'\"" |
 \ endif


" Special File Types
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.tpl set ft=html
au BufRead,BufNewFile *.xsl set ft=html
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.js set ft=javascript.jsx
au BufRead,BufNewFile *.hbs set syntax=handlebars
au BufRead,BufNewFile *.n3  set ft=n3
au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx
au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufNewFile,BufRead *.gradle setf groovy



"Copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V

function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute '%s/' . search . '/' . replace . '/' . flag. '| update'
endfunction

nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" whole
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" confirm
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" confirm and whole
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
