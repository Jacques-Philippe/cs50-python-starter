#!/bin/sh

REMINDER="Make sure to run this from project root\n"

GIT_DIR=".git"
#if .git directory exists
if [ ! -d "$GIT_DIR" ]; then
    printf "❌ $GIT_DIR wasn't found.\n$REMINDER"
    return
fi

HOOKS_DIR="$GIT_DIR/hooks"
#if hooks directory exists
if [ ! -d "$HOOKS_DIR" ]; then
    printf "❌ $HOOKS_DIR wasn't found.\n$REMINDER"
    return
fi

PRECOMMIT_FILE="$HOOKS_DIR/pre-commit"
SCRIPTS_DIR="scripts"

chmod +x $PRECOMMIT_FILE

cat > $PRECOMMIT_FILE <<- EOM
. $SCRIPTS_DIR/test.sh
. $SCRIPTS_DIR/format.sh
. $SCRIPTS_DIR/lint.sh
. $SCRIPTS_DIR/save-requirements.sh
EOM

echo "✅ Pre-commit hooks set to test, format, lint, and save requirements"