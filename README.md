# dotfiles

My macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

<img width="1470" height="845" alt="Screenshot 2026-06-04 at 12 08 37 AM" src="https://github.com/user-attachments/assets/b0121b8e-af21-4c2b-936b-5adcd550f02e" />

## Requirements

- macOS
- [GNU Stow](https://formulae.brew.sh/formula/stow): `brew install stow`
- The apps you actually use (see table). Nothing is auto-installed.

## Install on a new machine

```bash
git clone https://github.com/ForceDrift/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow alacritty ghostty git kitty nvim opencode sketchybar skhd starship yabai zathura zsh
```

Or, shorter (stows every package dir):

```bash
stow */
```

`stow` symlinks each file into `$HOME`, so `~/.config/alacritty` is a symlink into
`~/.dotfiles/alacritty/.config/alacritty`.

## Install just nvim

Only want Neovim? With stow:

```bash
git clone https://github.com/ForceDrift/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow nvim
```

Without stow, symlink it manually (same result):

```bash
git clone https://github.com/ForceDrift/dotfiles.git ~/.dotfiles
mkdir -p ~/.config
ln -s ~/.dotfiles/nvim/.config/nvim ~/.config/nvim
```

Then set up the Python venv that `nvim` needs:

```bash
python3 -m venv ~/.local/share/nvim/venv
~/.local/share/nvim/venv/bin/pip install pynvim
```

## Update

Configs are symlinked into this repo, so existing installs just pull:

```bash
cd ~/.dotfiles && git pull
```

If an update adds a new package, stow it too (install everything or just the new one):

```bash
cd ~/.dotfiles && stow */
# or: stow <newpackage>
```

## Post-install

- **nvim Python venv** (used by `init.lua` for `python3_host_prog`):

  ```bash
  python3 -m venv ~/.local/share/nvim/venv
  ~/.local/share/nvim/venv/bin/pip install pynvim
  ```

- **sketchybar** compiles its C event-provider helpers:

  ```bash
  cd ~/.config/sketchybar/helpers && make
  ```

- **opencode**: run `npm install` in `~/.config/opencode` if you need the local plugins.
  `node_modules/` is git-ignored and stays on the machine.

## Workflow

Configs are symlinked from `~/.config` into this repo, so you edit files in place:

```bash
nvim ~/.config/alacritty/alacritty.toml   # or wherever you like
cd ~/.dotfiles
git add -A && git commit -m "tweak" && git push
```

## Uninstall a package

```bash
cd ~/.dotfiles && stow -D <package>
```

## Excluded on purpose

These live in `~/.config` but are **not** tracked (credentials / machine-specific):
`gcloud/`, `gh/`, `github-copilot/`, `iterm2/`, `raycast/`, plus any `venv/` and
`node_modules/`.

