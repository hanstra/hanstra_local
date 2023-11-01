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
nslb () { /usr/bin/nslookup ${1}.library.nd.edu ; }
nslc () { /usr/bin/nslookup ${1}.lc.nd.edu ; }

sdock () { /usr/local/bin/docker exec -t -i ${1} /bin/bash ; }

function git-recommit {
    local COMMIT_SHA=${1}
    echo ${COMMIT_SHA}
    local GIT_COMMIT_TITLE=${TITLE:-$(git show --quiet --format='%s' ${COMMIT_SHA} | perl -ple 's/\`/\\\`/g')}
    echo "TITLE: ${GIT_COMMIT_TITLE}"
    local GIT_COMMIT_BODY=${BODY:-$(git show --quiet --format='%b' ${COMMIT_SHA})}
    GIT_COMMIT_BODY=${GIT_COMMIT_BODY:+"-m \"${GIT_COMMIT_BODY}\""}
    local GIT_AUTHOR_NAME=${AUTHOR_NAME:-${NAME:-$(git show --quiet --format='%an' ${COMMIT_SHA})}}
    local GIT_AUTHOR_EMAIL=${AUTHOR_EMAIL:-${EMAIL:-$(git show --quiet --format='%ae' ${COMMIT_SHA})}}
    local GIT_AUTHOR_DATE=${AUTHOR_DATE:-${DATE:-$(git show --quiet --format='%aI' ${COMMIT_SHA})}}
    local GIT_COMMITTER_NAME=${COMMITTER_NAME:-${NAME:-$(git show --quiet --format='%cn' ${COMMIT_SHA})}}
    local GIT_COMMITTER_EMAIL=${COMMITTER_EMAIL:-${EMAIL:-$(git show --quiet --format='%ce' ${COMMIT_SHA})}}
    local GIT_COMMITTER_DATE=${COMMITTER_DATE:-${DATE:-$(git show --quiet --format='%cI' ${COMMIT_SHA})}}
    local GIT_COMMAND="GIT_AUTHOR_NAME=\"${GIT_AUTHOR_NAME}\" GIT_AUTHOR_EMAIL=\"${GIT_AUTHOR_EMAIL}\" GIT_AUTHOR_DATE=\"${GIT_AUTHOR_DATE}\" GIT_COMMITTER_NAME=\"${GIT_COMMITTER_NAME}\" GIT_COMMITTER_EMAIL=\"${GIT_COMMITTER_EMAIL}\" GIT_COMMITTER_DATE=\"${GIT_COMMITTER_DATE}\" git commit -m \"${GIT_COMMIT_TITLE}\" ${GIT_COMMIT_BODY} ${@:2}"
    echo "${GIT_COMMAND}"
    eval "${GIT_COMMAND}"
    #GIT_AUTHOR_NAME=$GIT_AUTHOR_NAME GIT_AUTHOR_EMAIL=$GIT_AUTHOR_EMAIL GIT_AUTHOR_DATE=$GIT_AUTHOR_DATE GIT_COMMITTER_NAME=$GIT_COMMITTER_NAME GIT_COMMITTER_EMAIL=$GIT_COMMITTER_EMAIL GIT_COMMITTER_DATE=$GIT_COMMITTER_DATE git commit -m "$GIT_COMMIT_TITLE" -m "$GIT_COMMIT_BODY"
}

function git-replay-commit {
    local COMMIT_SHA=$1
    git cherry-pick --no-commit $COMMIT_SHA
    git-recommit $COMMIT_SHA ${@:2}
}

function git-replay-backup-alert-commit {
    local COMMIT_SHA=$1
    git checkout $COMMIT_SHA -- alephe/www_f_eng/backup-alert
    git-recommit $COMMIT_SHA
}

