# dotfiles

My macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Requirements

- macOS
- [GNU Stow](https://formulae.brew.sh/formula/stow): `brew install stow`
- The apps you actually use (see table). Nothing is auto-installed.

## Install on a new machine

```bash
git clone git@github.com:ForceDrift/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow alacritty ghostty git kitty nvim opencode sketchybar skhd starship yabai zathura zsh
```
