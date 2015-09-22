uname_str=`uname`
hostname_str=`hostname`

alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# PS1
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[01;34m\]"

PS1="${GREEN}\u@\h${YELLOW} \A \w${RED} \$(__git_ps1) ${BLUE}\$\[\033[00m\] "
