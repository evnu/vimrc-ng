# vimrc - next generation

My next generation vimrc.

## Requirements

* `rg` (ripgrep)
* `fzf`
* `ctags`

## LanguageClient-neovim
* rust
* make

## rust-analyzer
* rust
* `rust-analyzer` ([AUR](https://aur.archlinux.org/packages/rust-analyzer-bin))

## C/C++

* `clangd` for LanguageClient-neovim

## Installation

First, initialize the submodules:

```
$ ./update.sh
```

### Vim

```
$ ln -s $PWD/ ~/.vim
```

### Neovim

```
$ mkdir -p ~/.config/nvim
$ ln -s $PWD/ ~/.config/nvim
```

## Updating

```
$ ./update.sh
```

## Plugin Handling

Plugins are added as submodules to `pack/evnu/start/`. No extra plugin manager
is used. This requires Vim 8.  See `:h packages` for more information.
