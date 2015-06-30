" Wohey's vimrc
" Howard Yeh <howard.chyeh at gmail dot com>


set nocompatible    " not compatible with the old-fashion vi mode
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Vim
Plugin 'bling/vim-airline'

" Tool
Plugin 'vim-scripts/Align'  " alignment tool
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic' " syntax checkig
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-expand-region'
Plugin 't9md/vim-smalls'  " cursor movement
Plugin 'int3/vim-taglist-plus'

" syntax helper
Plugin 'mattn/emmet-vim'  " abbreviation tool
Plugin 'othree/html5.vim'
Plugin 'othree/xml.vim'
Plugin 'nginx.vim'    " highlights configuration files for nginx

" Complte
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/tern_for_vim_coffee'
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'

Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'tomtom/tlib_vim.git'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'airblade/vim-gitgutter'

" Style
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'



" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax on
filetype on                 " Enable filetype detection
filetype indent on          " Enable filetype-specific indenting
filetype plugin on          " Enable filetype-specific plugins

colorscheme gentooish

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

" Replace tab with 4 spaces.
set expandtab
set softtabstop=2
set shiftwidth=2

set hlsearch        " search highlighting
set incsearch       " incremental search
set showmatch       " Cursor shows matching ) and }
set showmode        " Show current mode
set autoindent        " auto indentation
set smartindent
set cindent
set nobackup        " no *~ backup files
set ignorecase        " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to context
set foldmethod=syntax
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
set pastetoggle=<F12>

" Set cursor line.
set cursorline
set cursorcolumn
highlight CursorLine cterm=none ctermbg=236
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight CursorColumn cterm=none ctermbg=236

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


"Taglist
nnoremap <silent> <F3> :TlistToggle<CR>

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
" " Make vim setting works immediately.
autocmd! BufWritePost .vimrc source %


" Special File Types
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.tpl set ft=html
au BufRead,BufNewFile *.xsl set ft=html
au BufRead,BufNewFile *.json set syntax=json
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
"
" "III. Use region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:EasyMotion_leader_key = ','


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

" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>











