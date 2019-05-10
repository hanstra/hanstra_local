# .bash_profile

#
#  Create function to perform ls on cd
#
cdl () { cd "${1}" ; ls -aFCG; }
pol () { popd ${1} ; ls -aFCG; }
pul () { pushd ${1} ; ls -aFCG; }
khc () { /usr/bin/sed -i -e /${1}/d ~/.ssh/known_hosts; }

apb () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
app () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apl () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
aps () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apsv () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K -vvvv ; }
apt () { /usr/local/bin/ansible-playbook ./playbooks/${1} --check ; }

