
# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt redhat
PS1="[%n@%m %1~]$ "

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd() {
    vcs_info
}

setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true

zstyle ':vcs_info:*'    formats "  %n@%%m:%F{3}%r/%S %F{6}-%b- %F{5}%a %m%u%c
" "[%%n@%%m %1~] $ "
zstyle ':vcs_info:*'    nvcsformats   "[%n@%m %1~]$ "
zstyle ':vcs_info:*'    actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '

PS1='${vcs_info_msg_0_}%f${vcs_info_msg_1_}'
