# My dotfiles

My personal dotfiles to configure my terminal.

## Content

Tools versioned :
- .bashrc
- tmux
- nvim
- allacrity
- fish
- starship
- gh

## Requirements

- [stow](https://www.gnu.org/software/stow/)

## Installation

1. Clone the repository inside your `$HOME` directory. You can use the command:

```bash
git clone https://github.com/ASparton/dotfiles ~/$HOME/dotfiles
```

2. Use stow to apply your configuration files:

```bash
stow --adopt .
```

> ⚠️ If there is a conflict between your current dotfiles and the one you pulled or cloned, make sure to keep the latest version you want.

