#!/bin/sh

# set -x
set -e
set -u

script_name=$(basename ${0})

print_help() {
cat<<EOF
    Run 'git rebase' in most usefull ways:

    ${script_name} [BASE] - rebase current branch on the specfied BASE commit, or origin/master if not specfied.
    ${script_name} BASE FROM TO - shortcut for 'git rebase --onto BASE FROM..TO'. See [1] for details.

    ${script_name} help - show this help

    Links:
    - [1] Documentation for 'git rebase --onto' - https://git-scm.com/docs/git-rebase#Documentation/git-rebase.txt---ontoltnewbasegt

EOF
}

GIT_REBASE='git -c "rebase.instructionFormat=(%an <%ae>) %s" rebase  --autostash'

if [ "${#}" = "0" ]; then
    git -c "rebase.instructionFormat=(%an <%ae>) %s" rebase  --autostash --interactive origin/master
elif [ "${#}" = "1" ]; then
    if [ "$1" = "help" ]; then
        print_help
    else
        git -c "rebase.instructionFormat=(%an <%ae>) %s" rebase  --autostash  --interactive $1
    fi
elif [ "${#}" = "3" ]; then
    git -c "rebase.instructionFormat=(%an <%ae>) %s" rebase  --autostash  --interactive --onto "$1" "$2" "$3"
else
    print_help
    echo 1
fi

