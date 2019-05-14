# .bashrc -v 
#
#  08/03/07 Updated during initial switch to bash shell.       T. Hanstra
#
#
# Exit if not interactive
#
[[ $- == *i* ]] || return  
#
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#  Create function to perform ls on cd
#
cdl () { cd ${1} ; ls -aFC --color ; }
pol () { popd ${1} ; ls -aFC --color ; }
pul () { pushd ${1} ; ls -aFC --color ; }

source ~hanstra/.make_path_b
source ~hanstra/.bash_functions
source ~hanstra/.aliasb
source ~hanstra/.make_common_b
source ~hanstra/.set_prompt_b
#
#
#  SET PROMPT BY cd TO CURRENT DIRECTORY
#
cd .
# Address lookup plugin problems with python 2.7 and ansible 2.5.0rc1
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export AWS_DEFAULT_REGION=us-east-1
