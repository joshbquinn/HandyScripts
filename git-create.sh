#!/bin/sh

repo_name=$1
user=$2

test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u $user https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
