#!/bin/sh
set -e

BASEDIR=$(dirname "$0")

$BASEDIR/eslint.sh "$@"
$BASEDIR/prettier.sh "$@"
