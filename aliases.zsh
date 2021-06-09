# Lock the screen (when going AFK)
alias afk="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,control down}'"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# ip address
alias ip="echo Your ip is; dig +short myip.opendns.com @resolver1.opendns.com;"

# directory short cuts
alias p='cd ~/Projects/'
alias d='cd ~/Downloads/'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
