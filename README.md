# Wohey-terminal-settings
Backup for Wohey's work environment (OSX)
iTerm2 + oh my zsh + vim

## iTerm2

    http://www.iterm2.com/#/section/downloads
    
Get the iTerm color settings

    https://github.com/hukl/Smyck-Color-Scheme/zipball/master
    
Apply them in iTerm through iTerm -> preferences -> profiles -> colors -> load presets -> import. You can create a different profile, other than Default if you wish to do so.

Then open the itermcolors file, click load presets again and load the "Smyck-Color".

## Oh my zsh 

More info here: https://github.com/robbyrussell/oh-my-zsh
    
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    
edit `~/.zshrc` and set `ZSH_THEME="candy"`  
   
zsh theme preview: http://zshthem.es/all/

## Vim

vim theme preview: http://vimcolorschemetest.googlecode.com/svn/html/index-html.html

### Vundle

Install vundle
    ```git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

Add required code to .vimrc  
```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line
```

Commands  
Install in vim `:PluginInstall`  
Install by cli `vim +PluginInstall +qall`  
List all plugins `:PluginList`  
Update plugins `PluginUpdate`  
Search plugins `PluginSearch [plugin name]`  
Clean unused plugins `PluginClean`  
