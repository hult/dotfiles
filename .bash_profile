# Nice prompt
PS1="[\[\e[01;32m\]\u\[\e[0;0m\]@\[\e[01;33m\]\h\[\e[0;0m\]]\[\e[01;29m\]\w\[\e[0;0m\] \\$ "

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# I hate vim
export EDITOR=emacs

# ~/bin
export PATH=$PATH:~/bin

# Go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/Go
eval "$(direnv hook bash)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
