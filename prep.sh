#!/usr/bin/env bash

cd "$(dirname "$0")"

git clone git://git.savannah.gnu.org/emacs.git
cd emacs
git branch -D build
git checkout -b build emacs-28.0.91
rm -rf .git
cd ..
mv emacs/* emacs/.* .
