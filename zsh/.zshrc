export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	web-search
	zsh-fzf-history-search
	# zsh-bat # bat becomes cat, rcat becomes cat
	node-bin
)

source $ZSH/oh-my-zsh.sh

alias bi="brew install"
alias bio="brew info"
alias ls="ls -p -G"
alias la="ls -A"
alias ll="ls -l"
alias lla="ll -A"
alias g="git"
alias lg="lazygit"
alias sp="speedtest"
alias glog="git log --pretty=oneline --all --decorate --graph"
alias gbc="git branch --show-current | tr -d '\n' | pbcopy"
alias y="yazi"

export KUBECONFIG="$HOME/.kube/config-dev"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export EDITOR=nvim

# TODO: remove if unused
function file-to-clipboard() {
  for file in "$@"; do
    [[ ! -e "$file" ]] && echo "File not found: $file" >&2 && return 1
    osascript -e 'on run argv' \
              -e 'set the clipboard to POSIX file (first item of argv)' \
              -e 'end run' \
              "$file"
  done
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

#if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
#fi

eval "$(zoxide init zsh)"

export PATH="$PATH:/Users/a.rozhenkov/.local/bin"
export PATH="$PATH:/Users/a.rozhenkov/.lmstudio/bin"
# End of LM Studio CLI section

