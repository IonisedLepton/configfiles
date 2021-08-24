CURRENT_BRANCH_NAME=$(basename $(git symbolic-ref HEAD))
FILE=$1

git checkout master
git pull
git checkout $CURRENT_BRANCH_NAME -- $FILE
git commit -m "$FILE: Update from system $CURRENT_BRANCH_NAME" 
git push origin master
git checkout $CURRENT_BRANCH_NAME

