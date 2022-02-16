#!/usr/bin/env bash
for f in `find .  -type f -exec dirname {} \; | grep -v .git | sort -u`
do
  cd $f
  [[ -f README || -f README.org || -f README.md ]] || {
    echo "$f does not have a README!"
    exit 1
  }
  echo all fine in $PWD
  cd -
done


