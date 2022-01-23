# outputting help
autoload -Uz run-help
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/archaei/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt : archaei@damnbushes ~ %           [69]
PROMPT='%F{green}%n%f:%F{white}%m%f %F{cyan}%B%~%b%f %# '
#RPROMPT='[%F{yellow}%?%f]'

#
# ~/.bashrc
#

alias ls='ls --color=auto'

eval "$(thefuck --alias)"

source ~/.config/aliases
ibus-daemon -drxR
