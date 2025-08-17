# --- START: Configuration ---

# use Vim in zsh terminal
bindkey -v

# enable expand % $ variable
setopt PROMPT_SUBST
# set vcs_info as lazy loading (function call on demand) 
autoload -Uz vcs_info
# Configure vcs_info to show only the branch name for git
zstyle ':vcs_info:git:*' formats '%b'

alias ls='ls -lh --color=auto'

# --- END: Configuration --- 

# Update vcs_info before each prompt
precmd() { 
  vcs_info
  PROMPT=$(build_prompt)
}
 
build_prompt() {
  local git_branch=""
  local exit_indicator="%(?.%F{white}$.%F{red}$)%f"
  local user_name_and_host_name="%F{green}%n@%m%f"
  local directory="%F{cyan}%2~%f"

  if [[ -n $vcs_info_msg_0_ ]]; then
    git_branch=" %F{yellow}(${vcs_info_msg_0_})%f"
  fi

  echo "${user_name_and_host_name} ${directory}${git_branch} ${exit_indicator} "
}
