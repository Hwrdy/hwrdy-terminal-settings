" Hwrdy's vimrc

" no vi-compatible
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Vim
Plugin 'bling/vim-airline'
Plugin 'fisadev/fisa-vim-colorscheme' " Terminal Vim with 256 colors colorscheme

" Tool
" Plugin 'vim-scripts/Align'            " alignment tool
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'      " leader a
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/matchit.zip'      " %
Plugin 'scrooloose/nerdcommenter'     " ,cc ,cu ,space
Plugin 'scrooloose/nerdtree'
Plugin 'kshenoy/vim-signature'
Plugin 'kien/ctrlp.vim'
Plugin 'fisadev/vim-ctrlp-cmdpalette' " extension to ctrlp, for fuzzy command finder
Plugin 'terryma/vim-expand-region'    " v,V
Plugin 'majutsushi/tagbar'
Plugin 'kien/tabman.vim'              " tablist panel , leader mt/mf
Plugin 'Townk/vim-autoclose'          " Auto close
Plugin 't9md/vim-choosewin'           " Windows chooser, -
Plugin 'c9s/colorselector.vim'        " :SelectColorS
Plugin 'sjl/gundo.vim'                " undo list
Plugin 'Yggdroot/indentLine'
Plugin 'dyng/ctrlsf.vim'              " ctrl shift find

" syntax helper
Plugin 'mattn/emmet-vim'              " abbreviation tool
Plugin 'othree/html5.vim'
Plugin 'othree/xml.vim'
Plugin 'nginx.vim'                    " highlights configuration files for nginx
Plugin 'othree/yajs.vim',
Plugin 'othree/es.next.syntax.vim'

" Complte
Plugin 'marijnh/tern_for_vim'
"Plugin 'othree/tern_for_vim_coffee'
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'
"Plugin 'Valloric/YouCompleteMe'


Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'tomtom/tlib_vim.git'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'justinj/vim-react-snippets'



" Style
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/csscomplete.vim'
"Plugin 'juvenn/mustache.vim'
"Plugin 'mustache/vim-mustache-handlebars'

" Coffee
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'othree/fecompressor.vim'


" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required



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
let g:airline_theme = 'bubblegum'
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


" TabMan ------------------------------
" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'


" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" CtrlSF ----------------------------------
nmap     <Leader>ff <Plug>CtrlSFPrompt
vmap     <Leader>ff <Plug>CtrlSFVwordPath
vmap     <Leader>fF <Plug>CtrlSFVwordExec
nmap     <Leader>fn <Plug>CtrlSFCwordPath
nmap     <Leader>fp <Plug>CtrlSFPwordPath
nnoremap <Leader>fo :CtrlSFOpen<CR>
nnoremap <Leader>ft :CtrlSFToggle<CR>
inoremap <Leader>ft <Esc>:CtrlSFToggle<CR>


" Run Interactive
nnoremap <leader>ri :RunInInteractiveShell<space>


" Autoclose ------------------------------
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}



" SnipMate --------------------------------
au BufRead *.js set ft=javascript.html
au BufNewFile *.js set ft=javascript.html

" au BufRead *.jsx set ft=javascript.html
" au BufNewFile *.jsx set ft=javascript.html

au BufRead *.es6 set ft=javascript.html
au BufNewFile *.es6 set ft=javascript.html

"Indent Guide ----------------------------
let g:indentLine_color_term = 239


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

" Gundo --------
nnoremap <F10> :GundoToggle<CR>

" Set Paste mode
nnoremap <silent> <F12> :set paste<CR>
nnoremap =<F12> :set nopaste<CR>


" Coffee
autocmd FileType coffee set ts=2 sw=2 sts=2

" CSS complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS noci

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


"III. Use region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)



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
  execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" without confirm, incomplete
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" without confirm, complete
" nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" confirm, incomplete
" nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" confirm, complete
nnoremap <Leader>rw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>











