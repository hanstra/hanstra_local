# .bash_profile

#
#  Create function to perform ls on cd
#
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

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME

