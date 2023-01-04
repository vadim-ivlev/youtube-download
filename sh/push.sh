#!/bin/bash

echo "Введите комментарий к коммиту:"
read msg
echo "Комментарий = $msg."
echo 


git add -A .
git commit -m "$msg."

repo_name=$(basename $PWD)
echo "repo_name = $repo_name"

# git remote add github git@github.com:vadim-ivlev/$repo_name.git
# git remote add gitlab git@gitlab.com:vadim-ivlev/$repo_name.git

git push https://vadim-ivlev:$GHUB_ACCESS_TOKEN@github.com/vadim-ivlev/$repo_name.git --all
git push https://vadim-ivlev:$GHUB_ACCESS_TOKEN@github.com/vadim-ivlev/$repo_name.git --tags

git push https://vadim-ivlev:$GLAB_ACCESS_TOKEN@gitlab.com/vadim-ivlev/$repo_name.git --all
# git push https://vadim-ivlev:$GLAB_ACCESS_TOKEN@gitlab.com/vadim-ivlev/$repo_name.git --tags

git push origin --all #master
git push origin --tags 