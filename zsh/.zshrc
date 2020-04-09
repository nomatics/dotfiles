# Bootstrap
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="bira"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias emacs="emacs -nw"

# Exports
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export EDITOR="emacs -nw"
