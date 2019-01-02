# .bash_profile

#
#  Create function to perform ls on cd
#
#cdl () { cd ${1} ; ls -aFCG; }
cdl () { cd "${1}" ; ls -aFCG; }
pol () { popd ${1} ; ls -aFCG; }
pul () { pushd ${1} ; ls -aFCG; }

#apb () { /usr/local/bin/ansible-playbook ~/aws_ansible/playbooks/${1} --sudo ; }
#app () { /usr/local/bin/ansible-playbook ~/aws_ansible/playbooks/${1} --sudo -k -K ; }
#apl () { /usr/local/bin/ansible-playbook ~/aws_ansible/playbooks/${1} ; }
#aps () { /usr/local/bin/ansible-playbook ~/aws_ansible/playbooks/${1} --skip-tags build --sudo -k -K ; }
#apt () { /usr/local/bin/ansible-playbook ~/aws_ansible/playbooks/${1} --sudo --check ; }

apb () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
app () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apl () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
aps () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apsv () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K -vvvv ; }
apt () { /usr/local/bin/ansible-playbook ./playbooks/${1} --check ; }

#taws () { /usr/bin/ssh -Y -i ~/.ssh/libnd.pem ec2-user@${1} }
#echo 'run bash_functions'
