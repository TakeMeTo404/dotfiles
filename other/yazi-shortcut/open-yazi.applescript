#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Yazi
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.mode silent

if application "WezTerm" is running then
	try
		tell application "WezTerm" to activate
	on error line number num
		display dialog "Error on line number " & num
	end try
else
	tell application "WezTerm" to activate
	delay 2
end if

do shell script "~/dotfiles/other/yazi-shortcut/open-yazi.sh"
