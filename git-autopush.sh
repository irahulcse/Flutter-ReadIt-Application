#!/bin/sh
git pull origin master
git checkout -b beta-release
git add .
git commit -m "Automatic Commit `date +%F-%T`"
git push -f origin beta-release