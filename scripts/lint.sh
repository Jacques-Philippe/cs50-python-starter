#!/bin/sh

SRC="./src"
VENV=".venv"

if [ ! -d $SRC ]; then
    printf "❌ Directory $SRC wasn't found.\nMake sure you're running this from project root."
    return
fi

python -m pylint $SRC --ignore=$VENV