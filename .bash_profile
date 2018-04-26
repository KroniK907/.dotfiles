# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.config/composer/vendor/bin:$HOME/.composer/vendor/bin
export PATH

export LANG="en_US.utf8"
export LANGUAGE="en_US.utf8"

alias vi=vim

EDITOR=/usr/bin/vim
export EDITOR

# Disable terminal Ctrl+ Commands while in vim. 
vim()
{
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}


# One time password for ssh key at start of each session
SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
        eval `$SSHAGENT $SSHAGENTARGS`
        trap "kill $SSH_AGENT_PID" 0
fi

ssh-add -l >/dev/null 2>&1
if [ $? -eq 1 ]; then
        ssh-add
fi
