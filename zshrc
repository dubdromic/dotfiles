zstyle :compinstall filename '/home/corin/.zshrc'

EDITOR=mg
GIT_SSL_NO_VERIFY=1
HISTFILE=~/.histfile
HISTSIZE=1000
PATH=$HOME/.rbenv/bin:$HOME/Bin/:$HOME/Code/RT/rt/bin:$HOME/.cask/bin:$PATH
SAVEHIST=1000
TERM=screen-256color
XDG_CONFIG_HOME=$HOME/.config
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
VM_DB_IP=$(VBoxManage guestproperty enumerate Windows7 | grep "Net/0/V4/IP" | awk '{ print substr($4,1,14); }')

export VM_DB_IP
export EDITOR
export TERM
export GIT_SSL_NO_VERIFY

setopt appendhistory
setopt nomatch
setopt NO_BEEP
setopt AUTO_LIST
setopt AUTO_MENU

bindkey -e

autoload -Uz compinit promptinit
compinit
promptinit

prompt redhat

case $TERM in
  *screen*)
    precmd () {print -Pn "\e]0;%n@%M: %~\a"}
  ;;
esac

[[ -s /usr/share/autojump/autojump.sh ]] && . /usr/share/autojump/autojump.sh
[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh
[[ -s /etc/profile.d/infinality-settings.sh ]] && . /etc/profile.d/infinality-settings.sh

eval "$(rbenv init -)"

source $HOME/.aliases
