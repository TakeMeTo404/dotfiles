# !/usr/bin/env zsh
PANES_JSON=$(/Applications/WezTerm.app/Contents/MacOS/wezterm cli list --format json)

TAB_ID=$(echo "$PANES_JSON" | jq -r '
  map(select(.tab_title == "yazi")) | .[0].tab_id // empty
')

if [ -n "$TAB_ID" ]; then
  /Applications/WezTerm.app/Contents/MacOS/wezterm cli activate-tab --tab-id "$TAB_ID"
else
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export EDITOR=nvim
  TAB_ID=$(/Applications/WezTerm.app/Contents/MacOS/wezterm cli spawn -- /bin/zsh -c "yazi ~/Desktop")
  /Applications/WezTerm.app/Contents/MacOS/wezterm cli set-tab-title yazi --tab-id "$TAB_ID"
fi
