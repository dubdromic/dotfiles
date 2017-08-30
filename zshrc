# Zsh setup
HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory extendedhistory share_history
setopt extendedglob nomatch automenu
setopt correct
autoload -Uz colors && colors
bindkey -e
autoload -Uz compinit promptinit
compinit
promptinit

# Shiny
TERM=xterm-256color
PROMPT="%~ %F{green}-> %f "

# Useful ENVs
export EDITOR=vim
export PATH=$HOME/Bin:$HOME/.rbenv/bin:$HOME/.cabal/bin:$PATH
export GOPATH=$HOME/Code/Go
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# The rest
[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh
[[ -s $HOME/.rbenv/bin/rbenv ]] && eval "$(rbenv init -)"
source $HOME/.aliases
