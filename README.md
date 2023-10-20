# vimrc - next generation

My next generation vimrc. By now, this only works with NeoVim.

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

## Installation

First, initialize the submodules:

```
$ ./update.sh
```

### Neovim

```
$ mkdir -p ~/.config
$ ln -s $PWD/ ~/.config/nvim
```

## Updating

```
$ ./update.sh
```

## Plugin Handling

Plugins are added as submodules to `pack/evnu/start/`. No extra plugin manager
is used.
