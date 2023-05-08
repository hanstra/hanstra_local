# .bash_profile

#
#  Create function to perform ls on cd
#
cdl () { cd ${1} ; ls -aFC --color ; }
pol () { popd ${1} ; ls -aFC --color ; }
pul () { pushd ${1} ; ls -aFC --color ; }
khc () { /usr/bin/sed -i -e /${1}/d ~/.ssh/known_hosts; }

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi

##
# Your previous /Users/hanstra/.bash_profile file was backed up as /Users/hanstra/.bash_profile.macports-saved_2022-12-15_at_11:45:16
##

# MacPorts Installer addition on 2022-12-15_at_11:45:16: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2022-12-15_at_11:45:16: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


ssh-add ~/.ssh/id_ed25519
