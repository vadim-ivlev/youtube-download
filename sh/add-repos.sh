#!/bin/bash

repo_name=$(basename $PWD)

git remote add github git@github.com:vadim-ivlev/$repo_name.git
git remote add gitlab git@gitlab.com:vadim-ivlev/$repo_name.git

