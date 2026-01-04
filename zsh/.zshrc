# Zsh Config

export DOTFILES="$HOME/.dotfiles"

# Antidote Package Manager
ANTIDOTE_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/.antidote"

if [ ! -d "$ANTIDOTE_HOME" ]; then
    mkdir -p "$(dirname $ANTIDOTE_HOME)"
    git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
fi

source "$ANTIDOTE_HOME/antidote.zsh"
antidote load "$DOTFILES/zsh/.zsh_plugins.txt"

# Starship
STARSHIP_CONFIG="$DOTFILES/starship/starship.toml"
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
bindkey '^E' autosuggest-accept

# Alias

alias ls="ls --color"
alias vim="nvim"
