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
alias svim='sudoedit vim'
alias snano='sudoedit nano'
export EDITOR=vim
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000