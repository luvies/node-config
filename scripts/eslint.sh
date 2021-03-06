#!/bin/sh
set -e

FIX_ARGS=
DIRS="src"

if [ "$1" = "fix" ]; then
  FIX_ARGS="--fix"
fi

if [ ! -z "$2" ]; then
  DIRS="$2"
elif [ -d "test" ]; then
  DIRS="$DIRS test"
fi

echo "<<< Linting >>>"
./node_modules/.bin/eslint --ext .js,.ts,.jsx,.tsx,.vue $FIX_ARGS $DIRS
