#!/bin/bash 
# @(#) ssh-select - ssh to internal - either libnd or lc domain
#
#       01/27/23    created                                                         T. Hanstra

#
#       OUTPUT PROCEDURE NAME, VERSION NUMBER, AND REVISION DATE
#
#echo -n 'Procedure: ssh-select            '
#echo -n 'Version: 1.0               '
#echo 'Revised: 02/03/exlibris/aleph/u23_1/alephe/www_f_eng/23'
#echo ''

#
#       CHECK FOR CORRECT ARGUMENT COUNT
#
if [ $# != 1 ] ; then
        echo ''
        echo 'Error: Wrong argument count.'
        echo 'Usage: ssh-select [server name]'
        echo ''
        exit 2
fi
#
# First see if the server is in lc.nd.edu domain
#
nslookup $1.lc.nd.edu > /tmp/lookup
if [ `nslookup $1.lc.nd.edu | grep "can't find" | awk '{print $4}'` == 'find' ]; then
  nslookup $1.libnd.nd.edu > /tmp/lookup
  if [ `nslookup $1.libnd.nd.edu | grep "can't find" | awk '{print $4}'` == 'find' ]; then
    echo "Could not find any server named: " $1
    exit 2
  else
    ssh $1.libnd.nd.edu
  fi
else
  ssh $1.lc.nd.edu
fi

