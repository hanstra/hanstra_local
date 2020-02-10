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

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi
