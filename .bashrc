# Nice prompt
PS1="[\[\e[01;32m\]\u\[\e[0;0m\]@\[\e[01;33m\]\h\[\e[0;0m\]]\[\e[01;29m\]\w\[\e[0;0m\] \\$ "

# ImageMagick
export MAGICK_HOME="$HOME/bin/ImageMagick-6.6.7"
export PATH="$PATH:$MAGICK_HOME/bin"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git
alias gitdiff="git diff --color=always --word-diff=color $*"

# I hate vim
export EDITOR=emacs
PATH=$PATH:/usr/local/sbin
