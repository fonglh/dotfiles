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

## .zshrc

Edits the path variable and enables use of [liquidprompt](https://github.com/nojhan/liquidprompt)

1. Create a symlink to the .zshrc file in the repo from the home directory.

    `$ ln -s sysconfig/.zshrc ~/.zshrc`

## .tmux.conf

Configuration file for tmux

1. Create a symlink to the .tmux.conf file in the repo from the home directory.

    `$ ln -s sysconfig/.tmux.conf ~/.tmux.conf`

## .my.cnf

Modifies the MySQL client prompt to display more information.

1. Create a symlink for the .my.cnf file in the repo from the home directory.

    `$ ln -s sysconfig/.my.cnf ~/.my.cnf`
