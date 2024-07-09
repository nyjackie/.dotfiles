# Check for homebrew, install if its missing
if test $(which brew); then
  echo "Homebrew is already installed..."
else
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew
echo "Updating homebrew..."
brew update

# Install packages
PACKAGES=(
  git
  tmux
  fzf
  lazygit
  neovim
  starship
  stow
  fd
  pfetch-rs
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

if [ ! -f ~/.zshrc ]; then
  touch ~/.zshrc
fi

# add starhip config
if ! grep -q 'eval "$(starship init zsh)"' ~/.zshrc; then
  echo 'eval "$(starship init zsh)"' >>~/.zshrc
fi

# add fzf config
if ! grep -q 'source <(fzf --zsh)' ~/.zshrc; then
  echo 'source <(fzf --zsh)' >>~/.zshrc
fi

echo "Installing apps..."
CASKS=(
  warp
  alacritty
)

echo "Installing apps..."
for app in "${CASKS[@]}"; do
  # Check app is already installed
  if brew list --cask | grep -q "^$app$"; then
    echo "$app is already installed."
  else
    echo "Installing $app..."
    brew install --cask "$app"
  fi
done

echo "
:::::::::::::::::::
::setup completed::
:::::::::::::::::::
"
