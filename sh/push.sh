#!/bin/bash

echo "Введите комментарий к коммиту:"
read msg
echo "Комментарий = $msg."
echo 


git add -A .
git commit -m "$msg."

# repo_name=$(basename $PWD)
# git remote add github git@github.com:vadim-ivlev/$repo_name.git
# git remote add gitlab git@gitlab.com:vadim-ivlev/$repo_name.git
# git remote add origin https://[USERNAME]:[TOKEN]@git.mycompany.com/[ORGANIZATION]/[REPO].git


# git push gitlab --all #master
# git push github --all #master
# git push origin --all #master


# git push gitlab --tags 
# git push github --tags 
# git push origin --tags 

git push https://vadim-ivlev:$GHUB_ACCESS_TOKEN@github.com/vadim-ivlev/youtube-download.git --all
git push https://vadim-ivlev:$GLAB_ACCESS_TOKEN@gitlab.com/vadim-ivlev/youtube-download.git --all
git push origin --all #master

git push https://vadim-ivlev:$GHUB_ACCESS_TOKEN@github.com/vadim-ivlev/youtube-download.git --tags
git push https://vadim-ivlev:$GLAB_ACCESS_TOKEN@gitlab.com/vadim-ivlev/youtube-download.git --tags
git push origin --tags 