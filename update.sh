#!/bin/sh
#
# Update plugins
#

git submodule init
git submodule update --recursive --remote

vim +helptags pack/ +qall

if which nvim &> /dev/null; then
    nvim +helptags pack/ +qall > /dev/null
fi
