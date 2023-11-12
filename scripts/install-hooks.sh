#!/bin/sh


if [ ! -d ".git" ] ; then
    echo ".git directory not found"
    exit 0
fi 
# if .git exists
if [ ! -d ".git/hooks" ] ; then
    echo ".git/hooks directory not found"
    exit 0
fi 
# if .git/hooks exists

cat >.git/hooks/pre-commit <<EOL
scripts/format.sh
EOL