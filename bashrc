#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom aliases
alias ls 'ls --color=auto'
alias svim='sudoedit vim'
alias snano='sudoedit nano'

# Set default editor
export EDITOR=vim

# History settings
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000
