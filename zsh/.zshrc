# =========================
# OH-MY-ZSH CORE
# =========================

export ZSH="$HOME/.oh-my-zsh"

# DISATTIVA TEMA OH-MY-ZSH (IMPORTANTE)
ZSH_THEME=""

# PLUGINS
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# =========================
# STARSHIP PROMPT
# =========================
eval "$(starship init zsh)"


# =========================
# PATH / TOOLING
# =========================

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pipx
export PATH="$PATH:$HOME/.local/bin"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ruby gems
export GEM_HOME="$HOME/.gem"
export GEM_PATH="$HOME/.gem"
export PATH="$HOME/.gem/ruby/3.4.0/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"


# =========================
# ALIASES
# =========================
alias update="sudo pacman -Syu --noconfirm && yay -Syu --noconfirm"
