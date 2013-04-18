uname_str=`uname`

if [[ "$uname_str" == 'Darwin' ]]; then
    alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"
fi

# Perl
export PERLBREW_ROOT=~/perl5/perlbrew
source ${PERLBREW_ROOT}/etc/bashrc

# Ruby
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# App ENVs
export PROTOSS_ENV=cthompson_local
export MGE_ENV=local
export MGE_WORLD=1

# PS1
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[01;34m\]"

PS1="${GREEN}\u@\h${YELLOW} $(date +%H:%M) \w${RED} \$(__git_ps1) ${BLUE}\$\[\033[00m\] "
