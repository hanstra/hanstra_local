# .bash_profile

#
#  Create function to perform ls on cd
#
#cdl () { cd ${1} ; ls -aFCG; }
cdl () { cd "${1}" ; ls -aFCG; }
pol () { popd ${1} ; ls -aFCG; }
pul () { pushd ${1} ; ls -aFCG; }

apb () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
app () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apl () { /usr/local/bin/ansible-playbook ./playbooks/${1} ; }
aps () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K ; }
apsv () { /usr/local/bin/ansible-playbook ./playbooks/${1} -k -K -vvvv ; }

sslb () { /usr/bin/ssh ${1}.library.nd.edu ; }
sslc () { /usr/bin/ssh ${1}.lc.nd.edu ; }
ssld () { /usr/bin/ssh ${1}.libnd.nd.edu ; }
ssln () { /usr/bin/ssh ${1}.libnd.nd.edu ; }
nslb () { /usr/bin/nslookup ${1}.library.nd.edu ; }
nslc () { /usr/bin/nslookup ${1}.lc.nd.edu ; }
