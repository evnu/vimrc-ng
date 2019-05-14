#!/bin/sh
#
# Update plugins
#

git submodule init

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    cut -f 2 -d ' ' |
    xargs git submodule update
