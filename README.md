# 🏠 My Dotfiles

Personal dotfiles backup for Ubuntu development environment (2-machine sync setup)

## 📦 Backed Up Configurations

### Shell Environment
- **bash/** - `.bashrc`, `.bashrc.ghostty`, `.bash_profile`, `.bash_logout`, `.profile`
- **zsh/** - `.zshrc`

### Editors
- **nvim/** - Neovim complete configuration
- **vim/** - Vim history and settings
- **claude/** - Claude Code assistant configuration
- **windsurf/** - Windsurf editor (if configured)

### Terminal & Tools
- **tmux/** - Terminal multiplexer configuration
- **git/** - Git global settings and OpenCommit AI
- **fzf/** - Fuzzy finder for bash and zsh

### Development
- **npm/** - Node package manager configuration
- **python/** - Conda, Python history, Poetry, UV
- **docker/** - Docker settings (credentials excluded)
- **aws/** - AWS CLI configuration (credentials excluded)

### Database & Others
- **postgresql/** - PostgreSQL client history
- **redis/** - Redis CLI history
- **ollama/** - Local LLM configurations
- **misc/** - Other utilities

## 🚀 Quick Start

### Prerequisites
- GNU Stow (`sudo apt install stow`)
- Git

### Installation on New Machine

1. Clone this repository:
```bash
git clone https://github.com/ainextmine/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Install configurations using GNU Stow:
```bash
# Install all configurations
stow */

# Or install specific ones
stow bash git nvim tmux
```

3. Reload your shell:
```bash
source ~/.bashrc  # or ~/.zshrc
```

### Updating Configurations

```bash
cd ~/dotfiles
git pull
stow -R <package_name>  # Reinstall specific package
```

### Adding New Configurations

1. Create a new directory for the tool
2. Mirror the home directory structure inside it
3. Use `stow <directory>` to create symlinks

## 📂 Structure

Each directory is a "stow package" that mirrors the home directory structure:

```
dotfiles/
├── bash/             # Bash shell configurations
│   ├── .bashrc
│   └── .bash_profile
├── nvim/             # Neovim configurations
│   └── .config/
│       └── nvim/
└── tmux/             # Tmux configurations
    └── .tmux.conf
```

## ⚙️ Management

- **Tool**: GNU Stow (symlink farm manager)
- **Structure**: Package-based (one directory per tool)
- **Purpose**: Multi-machine development environment synchronization

## 🔒 Security Note

Sensitive files (API keys, passwords, credentials) are excluded via `.gitignore`.

## 📅 Last Updated

2025-08-22

---

Total: 40+ configuration files/directories