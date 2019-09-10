#!/bin/csh
#
#  07/19/10 Build common version in single location            T. Hanstra
#
#
#  CREATE THE APPROPRIATE PATH
#
source ~hanstra/.make_path_c
#
#  IF RUNNING IN BACKGROUND, EXIT NOW;  OTHERWISE CONTINUE
#
if ( ! $?prompt ) exit
#
#  SET COMMON ENVIRONMENT VARIABLES
#
source ~hanstra/.make_common_c
#
#  SET ORACLE SID AS BEST YOU CAN
#
source ~hanstra/.make_oracle_sid_c
#
#  SET PROMPT BY cd TO CURRENT DIRECTORY
#
cd .
exit

