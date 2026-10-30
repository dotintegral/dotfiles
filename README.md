# Türbö Nerd Setup

Everything is themed with [Catppuccin Mocha](https://catppuccin.com), using green as the accent color.

### Prerequisites

1. Install [Homebrew](https://brew.sh)
1. Clone this repo to `~/dotfiles`
1. Install the font - Fira Code Nerd Font [downloads page](https://www.nerdfonts.com/font-downloads)

### Terminal - WezTerm

```sh
brew install --cask wezterm
ln -s ~/dotfiles/wezterm.lua ~/.wezterm.lua
```

The background image is read from `~/style/wallpapers/terminal-background.png`.

### Shell - zsh + Oh My Zsh + Oh My Posh

1. Install Oh My Zsh - [check here](https://ohmyz.sh/#install)
1. Install the plugins and the prompt, then link the configs:

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
brew install jandedobbeleer/oh-my-posh/oh-my-posh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh_aliases ~/.zsh_aliases
```

The prompt config lives in `ohmyposh/custom.toml`.

### TMux

```sh
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

Then start tmux and press `prefix + I` (prefix is `Ctrl-p`) to install the plugins.

### NeoVim - LazyVim

```sh
brew install nvim
ln -s ~/dotfiles/lazyvim ~/.config/nvim
```

### LazyGit

```sh
brew install lazygit
mkdir -p ~/Library/Application\ Support/lazygit
ln -s ~/dotfiles/lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
```

### Yazi

```sh
brew install yazi
ln -s ~/dotfiles/yazi ~/.config/yazi
ya pkg install
```
