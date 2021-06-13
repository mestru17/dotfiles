
### SET ENV VARIABLES ###
set fish_greeting         # Supresses fish's intro message
set TERM "xterm-256color" # Sets the terminal type
set EDITOR "nvim"         # $EDITOR use NeoVim in terminal
set VISUAL "nvim"         # $VISUAL use NeoVim in GUI mode
set -x MANPAGER "sh -c 'col -bx | batcat -l man -p'"

### ADD TO PATH ###
fish_add_path $HOME/bin        # User binaries
fish_add_path $HOME/nvim/bin   # NeoVim
fish_add_path $HOME/.cargo/env # Rust

### ALIASES ###
# bat
alias bat="batcat"

# Change ls to exa
alias ls='exa -al --header --color=always --group-directories-first --git --icons'
alias ll='exa -l --header --color=always --group-directories-first --git --icons'
alias lt='exa -aT --color=always --group-directories-first --icons'

# Dotfiles tracking
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias dotfiles-lg="lazygit -g=$HOME/dotfiles -w=$HOME"

