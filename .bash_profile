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

# Disable terminal Ctrl+ Commands while in vim. 
vim()
{
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}
