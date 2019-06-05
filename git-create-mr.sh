# Adapted from https://github.com/lukewaite/dotfiles/blob/master/git-create-mr.sh
#!/usr/bin/env bash

me=${1:-origin}
branch=`git rev-parse --abbrev-ref HEAD`

branch=`git branch-name`
commitHash=`git rev-parse HEAD`

remote=`git remote -v | grep "(push)$" | grep origin`
regex="origin[[:space:]]+git@([A-Za-z\.]+)[\:|\/](.*)/(.*).git"

if [[ $remote =~ $regex ]]; then
    server=${BASH_REMATCH[1]}
    group=${BASH_REMATCH[2]}
    project=${BASH_REMATCH[3]}
else
    echo "error: unsupported remote"
    exit 1
fi

if git show-ref --heads --quiet $branch; then
    force="--force"
fi

git checkout develop && git pull && git checkout $branch && git rebase develop && git push -u origin $force

if [[ $force = "" ]]; then
    open "https://$server/$group/$project/merge_requests/new?merge_request%5Bsource_branch%5D=$branch&merge_request%5Btarget_branch%5D=staging"
fi

