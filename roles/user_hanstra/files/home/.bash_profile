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

