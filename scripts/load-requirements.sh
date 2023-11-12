#!/bin/sh

REQ_FILE="./src/requirements.txt"

if [ ! -f $REQ_FILE ]; then
    printf "❌ The requirements file $REQ_FILE wasn't found\n"
    return
fi 

pip install -r $REQ_FILE

printf "✅ Requirements installed from $REQ_FILE\n"