uname_str=`uname`
hostname_str=`hostname`

if [[ "$uname_str" == 'Darwin' ]]; then
    alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

    # PS1
    RED="\[\033[0;31m\]"
    YELLOW="\[\033[0;33m\]"
    GREEN="\[\033[0;32m\]"
    BLUE="\[\033[01;34m\]"

    PS1="${GREEN}\u@\h${YELLOW} \A \w${RED} \$(__git_ps1) ${BLUE}\$\[\033[00m\] "
fi

# Android
export ANDROID_SDK_ROOT="$HOME/dev/android-sdk-macosx";
export ANDROID_SDK_PLATFORM_TOOLS="$ANDROID_SDK_ROOT/tools";
export ANDROID_NDK_ROOT="$HOME/dev/android-ndk-r8e";
