autoload -U colors && colors
autoload -Uz vcs_info
precmd() { vcs_info }

# format vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

setopt PROMPT_SUBST
PROMPT='%{$fg[green]%}%n@%m%{$fg[yellow]%} %T %~ %{$fg[red]%} ${vcs_info_msg_0_} %{$fg[blue]%}\$%{$reset_color%} '

if [ -d ~/.shell_completion.d ]; then
  for file in ~/.shell_completion.d/*; do
    . $file
  done
fi
