#!/bin/sh
#
# Update plugins
#

git submodule init

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    cut -f 2 -d ' ' |
    xargs git submodule update

# LanguageClient-neovim requires some more work
if which cargo &> /dev/null; then
    (
    echo "Building rust-analyzer"
    cd vendor/rust-analyzer/
    cargo xtask install --server
    )
    (
    echo "Building LanguageClient-neovim"
    cd pack/evnu/start/LanguageClient-neovim/
    make release
    )
else
    echo >&2 "NOTE: Cannot install/update LanguageClient-neovim without a working rust installation"
fi

vim +helptags pack/ +qall

if which nvim &> /dev/null; then
    nvim +helptags pack/ +qall > /dev/null
fi
