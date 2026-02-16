# zsh

oh-my-posh – prompt display. Is installed via next command:
curl -s https://ohmyposh.dev/install.sh | bash -s

oh-my-zsh – zshell framework. Installed via next command:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

plugins are installed separately, no automation by oh-my-zsh here
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
git clone https://github.com/remcohaszing/zsh-node-bin.git "${ZSH:-~/.oh-my-zsh}/custom/plugins/node-bin"


# yazi
installation (https://yazi-rs.github.io/docs/installation/#homebrew):
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick
installation on linux (difficult): official binaries https://github.com/sxyazi/yazi/releases

Plugin management:
1) Install plugins via 'ya pkg add yazi-rs/plugins:no-status' command
2) use plugins in yazi/init.lua file like 'require("no-status"):setup()' 




TODO:
- move plugins and flavors to gitignore and add installation command to README.md
