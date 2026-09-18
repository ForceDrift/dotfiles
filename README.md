# dotfiles

My macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's inside

| Package   | Installs to                        | Notes                                  |
|-----------|------------------------------------|----------------------------------------|
| `alacritty` | `~/.config/alacritty/`           |                                        |
| `ghostty`   | `~/.config/ghostty/`             |                                        |
| `git`       | `~/.gitconfig`                   |                                        |
| `kitty`     | `~/.config/kitty/`               |                                        |
| `nvim`      | `~/.config/nvim/`                | [AniVim](https://github.com/ForceDrift/AniVim) setup |
| `opencode`  | `~/.config/opencode/`            | plugins (`package.json`), not `node_modules` |
| `sketchybar`| `~/.config/sketchybar/`          | needs `make` in `helpers/`             |
| `skhd`      | `~/.config/skhd/skhdrc`          |                                        |
| `starship`  | `~/.config/starship.toml`        |                                        |
| `yabai`     | `~/.config/yabai/yabairc`        |                                        |
| `zathura`   | `~/.config/zathura/`             |                                        |
| `zsh`       | `~/.zshrc`                       |                                        |

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

Or, shorter (stows every package dir):

```bash
stow */
```

`stow` symlinks each file into `$HOME`, so `~/.config/alacritty` is a symlink into
`~/.dotfiles/alacritty/.config/alacritty`.

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

## Ghostty translucent background

```ini
background-blur = true
background-opacity = 0.75
background-blur-radius = 40
```