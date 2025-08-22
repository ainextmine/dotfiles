# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ubuntu/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ubuntu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ubuntu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ubuntu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/ubuntu/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# git
alias gitcon="git config user.name; git config user.email"
alias yengit='git config user.name "yenslife"; git config user.email "77geo5rge6@gmail.com"'
export PATH="$HOME/.local/bin:$PATH"

# 彩色 prompt 設定
PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '

# ls 顯示彩色
alias ls='ls --color=auto'

# neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export NOTION_API_KEY="secret_7HDQxEjmnoqNNpslghPWGrDQluhmSMn9RuaojYMp9lC"

# Claude MCP global configuration
export CLAUDE_MCP_SERVERS_CONFIG_FILE="/home/ubuntu/.config/claude/mcp_servers.json"
alias tmux="TERM=xterm-256color tmux"

# 如果是 Ghostty 連接，強制設定 TERM
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

# Ghostty compatibility
[ -f ~/.bashrc.ghostty ] && source ~/.bashrc.ghostty
export PATH="$HOME/.claude/local/node_modules/.bin:$PATH"
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(zoxide init bash)"
alias ..="cd .."
