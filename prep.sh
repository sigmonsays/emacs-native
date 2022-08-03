#!/usr/bin/env bash

cd "$(dirname "$0")"

[ -z emacs ] && exit 0
git clone -b emacs-28.0.91 \
    --single-branch --depth 1 \
    git@github.com:emacs-mirror/emacs.git
