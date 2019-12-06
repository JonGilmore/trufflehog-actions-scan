#!/usr/bin/env sh
set -e # Abort script at first error

args="--regex --entropy=False --max_depth=50" # Default trufflehog options

if [ -n "$1" ]; then
  args="$@" # Overwrite if new options string is provided
fi

echo "$args"
trufflehog $args $GITHUB_WORKSPACE