# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# This is my editor. There are many like it, but this one is mine.
export EDITOR="sublime"

# aws
export AWS_CREDENTIAL_FILE=$HOME/.elasticbeanstalk/aws_credential_file
export ELASTICBEANSTALK_URL="https://elasticbeanstalk.us-west-2.amazonaws.com" 



# node
export NODE_PATH=/usr/local/lib/node_modules/

# java
# export JAVA_HOME="$(/usr/libexec/java_home)"

#+++++++++++++++++++++++++++++#
#  Wondering where $PATH is?  #
#+++++++++++++++++++++++++++++#
# Using path_helper @ /etc/profile + /etc/paths + /etc/paths.d
# export PATH="$HOME/some/path:/another/path:$PATH"

# Manpaths are defined in /etc/manpaths + /etc/manpaths.d
# export MANPATH=/usr/local/man:/usr/share/man