# vimrc - next generation

My next generation vimrc.

## Requirements

* `rg` (ripgrep)
* `fzf`
* [`alt`](https://github.com/uptech/alt)
* `ctags`

## LanguageClient-neovim
* rust
* make

## rust-analyzer
* rust
* `cargo xtask` (cargo +nightly xtask install --server)

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
