#!/bin/bash

set -e

CURRENT_BRANCH_NAME=$(basename $(git symbolic-ref HEAD))
FILE=$1

if [ -z $FILE ]; then
	echo "exit: filename not supplied as an argument"
	exit 1
else
	if [ ! -e $FILE ]; then
		echo "exit: $FILE does not exist"
		exit 1
	else
		echo "Updating $FILE on master"
	fi
fi

git checkout master
git pull
git checkout $CURRENT_BRANCH_NAME -- $FILE
git commit -m "$FILE: Update from system $CURRENT_BRANCH_NAME" 
git push origin master
git checkout $CURRENT_BRANCH_NAME

