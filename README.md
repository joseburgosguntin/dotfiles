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

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/dreamsofautonomy/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

## References

[dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
