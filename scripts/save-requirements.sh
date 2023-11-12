#!/bin/sh

WORKING_DIRECTORY="src"
REQS_FILENAME="requirements.txt"

pip freeze > "$WORKING_DIRECTORY/$REQS_FILENAME"