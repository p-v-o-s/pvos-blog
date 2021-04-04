#!/bin/bash

git pull
git add *
git commit -m 'update'
git push --no-verify
cd ../p-v-o-s.github.io/
git pull
cd ../pvos-blog/
cp -r _site/* ../p-v-o-s.github.io/
cd ../p-v-o-s.github.io/
git add *	
git commit -m 'update'
git push
