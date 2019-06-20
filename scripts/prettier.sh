#!/bin/sh
set -e

FIX_ARGS=

if [ "$1" = "fix" ]; then
  FIX_ARGS=--write
fi

echo "<<< Formatting >>>"
./node_modules/.bin/prettier --check $FIX_ARGS '**/*.{ts,js,json,md,tsx,jsx,html,scss,css,yaml,yml,vue}'
