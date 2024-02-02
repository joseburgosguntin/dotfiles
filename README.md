# dotfiles

## Dependencies

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

### Tmux

```
sudo apt install tmux
```

### Nvim

[nvim](https://github.com/neovim/neovim/releases/latest/)

#### RipGrep

nice to install with cargo

install rust

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

```
$ cargo install ripgrep
```

#### NvChad

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:joseburgosguntin/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

## References

[dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
