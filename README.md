Jackie's dotfiles

# Initial Setup
0. Clone this repo with git
1. Run `./setup.sh` and wait for the magic to happen

# Symlink Setup
1. Check GNU Stow is installed (`brew install stow`)
2. `cd` into this repo
3. run command `stow .`
4. run `ls -al ~/.config` to check its linked

xx. run `stow -D .` in the dotfiles repo to unlink all

## Dependencies used
- fonts: [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip)
- theme: [catpuccin](https://github.com/catppuccin/lazygit)
- terminal: [Warp](https://www.warp.dev/)
- prompt: [Starship](https://starship.rs/)
- git: [lazygit](https://github.com/jesseduffield/lazygit)
- fzf: [fzf](https://github.com/junegunn/fzf)
