# path:   /home/klassiker/.local/share/repos/zsh-theme/klassiker.zsh-theme
# author: klassiker [mrdotx]
# github: https://github.com/mrdotx/zsh-theme
# date:   2021-01-15T14:21:18+0100

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -z $GIT_STATUS ]] && GIT_STATUS="%{$fg[blue]%} ✓%{$reset_color%}" || GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='%{$fg_bold[blue]%}[%n@%m%{$reset_color%} %2~%{$fg_bold[blue]%}]%{$reset_color%}$(my_git_prompt_info)%{$reset_color%}%B$%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} ["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%}]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}Y"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}<"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}~"

ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}…"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}?"
