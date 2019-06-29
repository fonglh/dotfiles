#!/bin/bash

# Install zsh and oh-my-zsh
sudo apt install zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh"
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
else
  echo "oh-my-zsh already installed"
fi

echo -e "--------------------------------------------------------------------------------\n"

# Link .zshrc
if [ ! -f ~/.zshrc ]; then
  echo "Symlinking .zshrc"
  ln -s ~/dotfiles/.zshrc ~/.zshrc
else
  echo ".zshrc already exists"
fi

echo -e "--------------------------------------------------------------------------------\n"

if [ ! -f ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme ]; then
  # Install bullet-train zsh theme
  echo "Installing bullet train zsh theme (https://github.com/caiogondim/bullet-train.zsh)"
  wget -O ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
else
  echo "Bullet train zsh theme already installed."
fi

echo -e "--------------------------------------------------------------------------------\n"

# Install ttf-ancient-fonts for bullet train zsh theme, as mentioned in the README at
# https://github.com/caiogondim/bullet-train.zsh
echo "Install ttf-ancient-fonts for bullet train theme"
sudo apt install ttf-ancient-fonts

echo -e "--------------------------------------------------------------------------------\n"

# Vim powerline
echo "Install powerline fonts"
sudo apt install fonts-powerline

echo -e "--------------------------------------------------------------------------------\n"

# Base16 Shell
if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
else
  echo "Base 16 Shell already installed"
fi

echo -e "--------------------------------------------------------------------------------\n"

# Install fuzzy finder for shell
if [ ! -d ~/.fzf ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
else
  echo "fzf already installed"
fi

echo -e "--------------------------------------------------------------------------------\n"

# Setup .vimrc
if [ ! -f ~/.vimrc ]; then
  echo "Symlinking .vimrc"
  ln -s ~/dotfiles/.vimrc ~/.vimrc
else
  echo ".vimrc already exists"
fi

echo -e "--------------------------------------------------------------------------------\n"

# Install Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Cloning Vundle into ~/.vim/bundle/Vundle.vim..."
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "Vundle already installed"
fi
echo -e "--------------------------------------------------------------------------------\n"
echo -e "Remember to open vim and run !PluginInstall\n\n\n"
