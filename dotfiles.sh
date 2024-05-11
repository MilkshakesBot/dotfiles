#!/bin/sh

# Check if zsh is installed
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Please install zsh and re-run this script."
    exit 1
fi

# Check if oh-my-zsh is installed
if [ -d "/home/$USER/.oh-my-zsh" ]; then
    echo "oh-my-zsh is already installed."
else
    # Install oh-my-zsh if not installed
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Dotfiles setup
echo "Setting up dotfiles..."

# Copy .bashrc
echo "Copying .bashrc..."
cp /home/$USER/dotfiles/bashrc /home/$USER/.bashrc

# Copy .zshrc
echo "Copying .zshrc..."
cp /home/$USER/dotfiles/zshrc /home/$USER/.zshrc

# Install oh-my-zsh plugins
echo "Installing oh-my-zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/$USER/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/chrissicool/zsh-256color ${ZSH_CUSTOM:=/home/$USER/.oh-my-zsh/custom}/plugins/zsh-256color
git clone https://github.com/gomjellie/zsh-hangul ${ZSH_CUSTOM:=/home/$USER/.oh-my-zsh/custom}/plugins/zsh-hangul

# Completion
echo "Setup complete. Please run source .bashrc/.zshrc to apply changes."
