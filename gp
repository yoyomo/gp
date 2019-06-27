#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: gp MESSAGE"
  exit 1;
fi

message=$@

git add .
git commit -m "$message"
git push origin head
