#!/bin/bash

echo "Введите комментарий к коммиту:"
read msg
echo "Комментарий = $msg."
echo 


git add -A .
git commit -m "$msg."

repo_name=$(basename $PWD)
git remote add github git@github.com:vadim-ivlev/$repo_name.git
git remote add gitlab git@gitlab.com:vadim-ivlev/$repo_name.git


# git push gitlab --all #master
git push github --all #master
# git push origin --all #master


# git push gitlab --tags 
git push github --tags 
# git push origin --tags 
