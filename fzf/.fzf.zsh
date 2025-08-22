# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ubuntu/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ubuntu/.fzf/bin"
fi

source <(fzf --zsh)
