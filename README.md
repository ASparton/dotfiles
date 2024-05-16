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

### Hard requirements

- [stow](https://www.gnu.org/software/stow/) to create symlinks for the dotfiles.

### Soft requirements (highly used in these dotfiles but can be removed)
- [zoxide](https://github.com/ajeetdsouza/zoxide) used to navigate the system directories.
- [asdf](https://asdf-vm.com/) to manage tools versions easily on your system

## Installation

1. Clone the repository inside your `$HOME` directory. You can use the command:

```bash
git clone https://github.com/ASparton/dotfiles $HOME/dotfiles
```

2. Use stow to apply your configuration files:

```bash
stow --adopt .
```

> ⚠️ If there is a conflict between your current dotfiles and the one you pulled or cloned, make sure to keep the latest version you want.
