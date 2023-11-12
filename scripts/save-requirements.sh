#!/bin/sh

WORKING_DIRECTORY="src"
REQS_FILENAME="requirements.txt"

if [ ! -d $SRC ]; then
    printf "❌ Directory $SRC wasn't found.\nMake sure you're running this from project root."
    return
fi

FULL_PATH="$WORKING_DIRECTORY/$REQS_FILENAME"
pip freeze > $FULL_PATH

printf "✅ Requirements saved to $FULL_PATH\n"