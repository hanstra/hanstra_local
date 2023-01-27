!/bin/sh
# @(#) find-task - Search through our AWS clusters to find a task 
#
#       01/27/23    created                                                         T. Hanstra

#
#       OUTPUT PROCEDURE NAME, VERSION NUMBER, AND REVISION DATE
#
echo -n 'Procedure: find-task            '
echo -n 'Version: 1.0               '
echo 'Revised: 01/27/23'
echo ''

#
#       CHECK FOR CORRECT ARGUMENT COUNT
#
if [ $# != 1 ] ; then
        echo ''
        echo 'Error: Wrong argument count.'
        echo 'Usage: find-task [taskID]'
        echo ''
        exit 2
fi
#
# If full ARN given, strip out just the task ID
#
echo $1

if [ `echo $1 | /usr/bin/egrep "arn"` ]; then
  taskid=`echo $1 | cut -d "/" -f 3`
else 
  taskid=$1
fi
echo $taskid
#
# Use AWS CLI commands to find the task
#
for i in $(aws ecs list-clusters --query clusterArns --output text| sed 's/\\t/\\n/g'); do
aws ecs describe-tasks --tasks $taskid --cluster $i;
echo $i
done  | grep -E "taskArn|$taskid --color=auto" | awk '{print $2}'| sort -n | uniq

