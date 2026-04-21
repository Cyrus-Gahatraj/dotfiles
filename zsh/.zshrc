# Zsh Config

export DOTFILES="$HOME/dotfiles"

# Antidote Package Manager
ANTIDOTE_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/.antidote"

if [ ! -d "$ANTIDOTE_HOME" ]; then
    mkdir -p "$(dirname $ANTIDOTE_HOME)"
    git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
fi

source "$ANTIDOTE_HOME/antidote.zsh"
antidote load "$DOTFILES/zsh/.zsh_plugins.txt"

# Omarchy
# source ~/.local/share/omarchy/default/bash/aliases

# Starship
STARSHIP_CONFIG="$DOTFILES/starship/starship.toml"


# Eval
eval "$(starship init zsh)"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase

setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Key Binds
bindkey '^Y' autosuggest-accept

# Alias
alias ls="ls --color"

if command -v nvim &> /dev/null; then
	alias vim="nvim"
fi

if command -v zoxide &> /dev/null; then
  alias cd="zd"
  zd() {
    if [ $# -eq 0 ]; then
      builtin cd ~ && return
    elif [ -d "$1" ]; then
      builtin cd "$1"
    else
      z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    fi
  }
fi

if command -v eza &> /dev/null; then
	alias ls='eza --icons=auto'
	alias ll='ls -lh'
	alias lt='eza --tree --level=2 --long --icons --git'
fi

# fzf
source <(fzf --zsh) fzf

# tmux
if [[ -z "$TMUX" && -n "$PS1" ]]; then
	tmux
fi
