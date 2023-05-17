
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git git-flow sudo web-search z)

source $ZSH/oh-my-zsh.sh

alias zshconfig="nano ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias ls="exa"
alias lss="exa -1"
alias la="exa -a"
alias c="clear"
alias cls="clear"
alias dev="cd ~/dev && clear"
alias p="pnpm"
alias .d="cd ~/.dotfiles"

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=$PATH:/usr/local/go/bin

if [ -e /home/niklas/.nix-profile/etc/profile.d/nix.sh ]; then . /home/niklas/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
