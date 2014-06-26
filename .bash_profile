#!/bin/bash
#

# Load .profile if it exists [paths]
test -f ~/.profile && source ~/.profile

# Load .bashrc if it exists [aliases n shit]
test -f ~/.bashrc && source ~/.bashrc

# git completion + prompt
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# bash-completion [homebrew]
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
# fi


# Write the downloads db to file
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent' >> ~/Documents/Logs/downloads.txt | sort

# Clear the downloads db
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

