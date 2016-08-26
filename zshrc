# Zsh setup
HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory extendedhistory
setopt extendedglob nomatch automenu
setopt correct
autoload -Uz colors && colors
bindkey -e

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
eval "$(rbenv init -)"
source $HOME/.aliases
