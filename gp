#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: gp MESSAGE"
  exit 1;
fi

message=$@

git status
git add .
git commit -m "$message"
git push origin head
