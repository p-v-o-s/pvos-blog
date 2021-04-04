#!/bin/bash

git add *
git commit -m 'update'
git push --no-verify
cp -r _site/* ../p-v-o-s.github.io/
cd ../p-v-o-s.github.io/
git add *	
git commit -m 'update'
git push
