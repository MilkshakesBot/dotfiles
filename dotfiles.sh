#!/bin/sh

# Dotfiles go brrrr
cd ~/

#bash
cp ~/dotfiles/.bashrc ~/.bashrc

source .bashrc

#zsh
cp ~/dotfiles/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/chrissicool/zsh-256color ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-256color
git clone https://github.com/gomjellie/zsh-hangul ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-hangul

echo "Please run source .bashrc/.zshrc"
