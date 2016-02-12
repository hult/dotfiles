# Nice prompt
PS1="[\[\e[01;32m\]\u\[\e[0;0m\]@\[\e[01;33m\]\h\[\e[0;0m\]]\[\e[01;29m\]\w\[\e[0;0m\] \\$ "

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
