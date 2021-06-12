# dotfiles
My dot files.

## Requirements
If you want to install all of the dot files in one go as described below, you will need to have [fish](https://fishshell.com/) installed, as the installer script is a fish script. Technically, it might be possible to run in other shells but this repository makes no guarantee of that.

## Installation
Either manually pick and choose the files you want or install them all in one go:
```fish
curl -L https://raw.githubusercontent.com/mestru17/dotfiles/master/install_dotfiles.fish | fish
```

## Usage
After installing, your fish shell should have a new alias, `dotfiles`, which works just like `git` (i.e. `git add ...`, `git commit -m ...`, etc.). Keep in mind, however, that only the owner can contribute to this repository.

