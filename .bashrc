# några små trevliga kommandon
alias logo='logout'
alias cd..='cd ..'
alias kexit='kdestroy; exit'
alias ls='ls --color=auto -F'
alias whereami='echo $HOSTNAME'
alias myps='ps -ef |grep `whoami`'
alias sieve='module add cyrus; sieveshell mail1; module rm cyrus;
module rm cyrus; module rm mutt; module add mutt/1.4; module rm
kth-krb'

# zlocatea alla från ~/.anyone men visa bara de som är
# online och visa bara deras namn och vilken dator
alias zl='zlocate -1 `cat ~/.anyone` |cut -f 1,2,4 |sort'

# pd path pushar . på stacken och går till path
# pd poppar från stacken
function pd() { if [ "$1" != "" ]; then pushd . > /dev/null ; cd $1;
else popd > /dev/null; fi; }

# hittar riktigt namn givet användarnamn eller tvärtom
function u() { if [ "$2" != "" ]; then ui -n $1 $2; else ui -u $1; fi; }

# fingrar en person på för- och efternamn
function tumme() { finger $1 |grep -i $2; }

#PS1="[\[\e]2;\h:\w\a\e]1;\e[01;32m\]\u\[\e[0;0m\]@\[\e[01;33m\]\h\[\e[0;0m\]]\[\e[01;29m\]\w\[\e[0;0m\] \\$ "
PS1="[\[\e[01;32m\]\u\[\e[0;0m\]@\[\e[01;33m\]\h\[\e[0;0m\]]\[\e[01;29m\]\w\[\e[0;0m\] \\$ "

# för projekt elbonia (prupp)
#export CVSROOT="/misc/projects/proj03/elbonia/cvs"

# för exjobb
export CVSROOT="/home/d00/d00-mhu/kurser/exjobb/cvsroot"

# varför någon nu skulle vilja ha en dos-prompt
# BACKSLASH="\\"
# PS1='C:`pwd |sed s-/-$BACKSLASH-g`>'
