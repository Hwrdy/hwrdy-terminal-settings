# hwrdy-terminal-settings
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

Install vim-plug

Commands
Install in vim `:PluginInstall`
Install by cli `vim +PluginInstall +qall`
List all plugins `:PluginList`
Update plugins `PluginUpdate`
Search plugins `PluginSearch [plugin name]`
Clean unused plugins `PluginClean`
