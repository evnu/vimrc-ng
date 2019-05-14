#!/bin/sh
#
# Update plugins
#

git submodule init

mkdir -p bundle

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    cut -f 2 -d ' ' |
    xargs git submodule update

# requires pathogen
vim +Helptags +qall

if which nvim &> /dev/null; then
    nvim +Helptags +qall
fi
