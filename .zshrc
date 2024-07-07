export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search zsh-fzf-history-search zsh-bat you-should-use node-bin)

source $ZSH/oh-my-zsh.sh

alias bi="brew install"
alias bio="brew info"
alias ls="ls -p -G"
alias la="ls -A"
alias ll="ls -l"
alias lla="ll -A"
alias g="git"
alias sp="speedtest"
alias glog="git log --pretty=oneline --all --decorate --graph"
alias sury="sudo openresty"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

export EDITOR=nvim

#if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.dotfiles/.config/ohmyposh/zen.toml)"
#fi

eval "$(zoxide init --cmd cd zsh)"
