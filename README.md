sysconfig
=========

.vimrc file and Ubuntu colour scheme for OS X terminal

## .vimrc

The .vimrc file uses Vundle for plugin management. For the `PluginInstall` and `BundleInstall`
commands to work, Vundle must be installed first.

Detailed instructions and examples can be found at https://github.com/gmarik/Vundle.vim

1. Create a symlink to the .vimrc file in the repo from the home directory.

    `$ ln -s sysconfig/.vimrc ~/.vimrc`

1. The most important thing is to install Vundle.

    `$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

1. After that, open Vim and run `PluginInstall`

## oh-my-zsh

Install (oh-my-zsh)[https://github.com/robbyrussell/oh-my-zsh]
as the `.zshrc` file assumes that's what we're using.

1. `sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

## .zshrc

Edits the path variable and enables the plugins.

1. Create a symlink to the .zshrc file in the repo from the home directory.

    `$ ln -s sysconfig/.zshrc ~/.zshrc`

## i3

Configuration file for the i3 window manager.

1. The i3 configuration file is at `~/.config/i3/config`.

    `ln -s ~/sysconfig/i3/ .config/i3`

## .tmux.conf

Configuration file for tmux

1. Create a symlink to the .tmux.conf file in the repo from the home directory.

    `$ ln -s sysconfig/.tmux.conf ~/.tmux.conf`

The `tmux` folder contains custom tmux startup scripts for customizing the windows
and panes for various development projects.

1. Start `tmux` with the custom file with the command:

    `$ tmux -f cm.conf attach`

  If `attach` is excluded, we'll have TWO tmux sessions instead of just one.

## .my.cnf

Modifies the MySQL client prompt to display more information.

1. Create a symlink for the .my.cnf file in the repo from the home directory.

    `$ ln -s sysconfig/.my.cnf ~/.my.cnf`

## Enabling Readline shortcuts on iTerm2

To enable them, on the iTerm2 menu, go to `iTerm -> Preferences`. Go to the `Profiles` tab, and click on `Keys`.
For the Left option key acts as: section, choose the `+Esc` radio button, and you’re all set.

From (http://blog.pangyanhan.com/posts/2013-12-13-vim-install-solarized-on-mac-os-x.html)
