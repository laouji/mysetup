uname_str=`uname`
hostname_str=`hostname`

alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# PS1
BASH_RED="\[\033[0;31m\]"
BASH_YELLOW="\[\033[0;33m\]"
BASH_GREEN="\[\033[0;32m\]"
BASH_BLUE="\[\033[01;34m\]"

PS1="${BASH_GREEN}\u@\h${BASH_YELLOW} \A \w${BASH_RED} \$(__git_ps1) ${BASH_BLUE}\$\[\033[00m\] "

LS_OPTION="--color"

if [[ "$uname_str" == 'Darwin' ]]; then
    LS_OPTION="-G"
fi

alias ll="ls -l ${LS_OPTION}" 2>/dev/null


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -d ~/.bash_completion.d ]; then
  for file in ~/.bash_completion.d/*; do
    . $file
  done
fi
