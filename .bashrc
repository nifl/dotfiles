 # Terminal.app color
CLICOLOR=1

# List export colors
LSCOLORS=gxfxcxdxbxegedabagacad

# iTerm color
export TERM=xterm-color

# Prompt
function color_my_prompt {
    # local __user_and_host="\[\033[01;34m\]\u@\h"
    # local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[36m\]"
    local __git_branch='[\W$(__git_ps1 " (%s)")]\n'
    local __prompt_tail="\[\033[32m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

# Bash
function dotfiles {
  $EDITOR $HOME/.dotfiles/.bash*
  $EDITOR $HOME/.dotfiles/.profile
}
alias d='dotfiles'
alias dot='cd $HOME/.dotfiles'
alias h='history'
alias s='source $HOME/.bash_profile'

# Dir navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -' # Go back

# Common Places
alias desk='cd $HOME/Desktop'
alias docs='cd $HOME/Documents'
alias down='cd $HOME/Downloads'
alias code='cd $HOME/Code'
alias proj='cd $HOME/Projects'

# Lists
alias ls='ls -G' # Compact view, show colors
alias la='ls -AF' # Compact view, show hidden
alias ll='ls -hl' # Single line view, show permissions, size, date

# Directory
function mkcd { mkdir -pv "$1" && cd "$1"; }
function mkgit { mkcd "$1" && git init; }
alias md='mkdir -p'
alias rd='rmdir'

# Servers
## Host configuration
function apachehostconfig {
  $EDITOR /etc/hosts
  $EDITOR /etc/apache2/httpd.conf
  $EDITOR /etc/apache2/extra/httpd-vhosts.conf
}
function tomcathostconfig {
  $EDITOR /usr/local/Cellar/tomcat/7.0.42/libexec/bin/setenv.sh
  $EDITOR /usr/local/Cellar/tomcat/7.0.42/libexec/conf/server.xml
  $EDITOR /usr/local/Cellar/tomcat/7.0.42/libexec/conf/web.xml
}
function railohostconfig {
  $EDITOR /etc/hosts
  $EDITOR /etc/apache2/extra/httpd-vhosts.conf
  $EDITOR /usr/local/Cellar/tomcat/7.0.42/libexec/conf/server.xml
}

#### Apache
alias afiles='cd /etc/apache2'
alias alocal='open http://localhost'
alias ahost='apachehostconfig'
alias astart='sudo apachectl start'
alias astop='sudo apachectl stop'
alias arestart='sudo apachectl restart'
alias atest='sudo apachectl -t'
#### Tomcat
alias tfiles='cd /usr/local/Cellar/tomcat/7.0.42/libexec/webapps'
alias tlocal='open http://localhost:8080/welcome' # TODO: fix this location
alias thost='tomcathostconfig' # config host
alias tstart="catalina start"
alias tstop="catalina stop"
#### Railo
alias rfiles='ftom/ROOT'
alias rlocal='http://railo.local' # railo welcome page
alias radmin='http://railo.local/railo-context/admin/server.cfm'
alias rhost='railohostconfig' # config host
#### MAMP
alias mamp="cd /Applications/MAMP/htdocs"
alias omamp="open http://localhost/MAMP/?language=English"

# Places
## Dev
### Project Folders

alias nunu="cd /Applications/MAMP/htdocs/com.nunusaku"
alias pony='cd $HOME/Projects/ACE/pony'
alias sparkle='cd $HOME/Code/sparkle'

## Remote
# don't forget you have a config file @ ~/.ssh/config
alias aws-nunu='ssh nunusaku -v -t "cd /var/app/current; bash --login"'

alias aws-comet='ssh comet -v -t "cd /usr/share/tomcat7/webapps/ROOT/; bash --login"'
alias aws-pony='ssh pony -v -t "cd /usr/share/tomcat7/webapps/ROOT/; bash --login"'

alias truth='ssh -p 25924 sycip_diesel@truthanize.org'

# Applications
## Git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

## Sublime Text
alias sublime-pkg='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages'≥

## Ruby
alias repow='touch ~/.pow/restart.txt'

## Rails
alias migrate='rake db:migrate && rake db:test:prepare'

## Postgres
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# htop
# htop-osx requires root privileges to correctly display all running processes.
# You can either run the program via `sudo` or set the setuid bit:
#   sudo chown root:wheel /usr/local/Cellar/htop-osx/0.8.2/bin/htop
#   sudo chmod u+s /usr/local/Cellar/htop-osx/0.8.2/bin/htop
alias htop="sudo htop"
PERL_MB_OPT="--install_base \"/Users/nifl/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/nifl/perl5"; export PERL_MM_OPT;
