#!/bin/bash

set -e

CURRENT_BRANCH_NAME=$(basename $(git symbolic-ref HEAD))
FILE=$1

git pull origin master
git checkout master -- $FILE
git add $FILE
git commit -m "$FILE: Pulled from master" 

