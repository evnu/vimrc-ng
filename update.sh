#!/bin/sh
#
# Update plugins
#

git submodule init

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    cut -f 2 -d ' ' |
    xargs git submodule update

vim +helptags ALL +qall

if which nvim &> /dev/null; then
    nvim +helptags ALL +qall
fi
