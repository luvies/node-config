#!/bin/sh
set -e

FIX_ARGS=

if [ "$1" = "fix" ]; then
  FIX_ARGS=--fix
fi

echo "<<< Linting >>>"
./node_modules/.bin/eslint --ext .js,.ts,.jsx,.tsx,.vue $FIX_ARGS src test
