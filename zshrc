#
# ~/.zshrc
#

# Zsh Stuff
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13
plugins=(
	git
	zsh-autosuggestions
	zsh-hangul
	zsh-256color
)
source $ZSH/oh-my-zsh.sh

# Custom aliases
alias tracert="tracepath"
alias svim='sudoedit vim'
alias snano='sudoedit nano'
alias sh="kitten ssh"

# Set default editor
export EDITOR=vim

# History settings
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# TBSM manager
if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
	exec tbsm
fi
