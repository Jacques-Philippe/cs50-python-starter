#!/bin/sh

SRC="./src"

if [ ! -d $SRC ]; then
    printf "❌ Directory $SRC wasn't found.\nMake sure you're running this from project root."
    return
fi

python -m pytest $SRC -v