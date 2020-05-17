# aw1cks' dotfiles

This repo uses GNU Stow.

For example, to deploy the desktop configuration:
```
$ git clone https://github.com/aw1cks/dotfiles
$ cd dotfiles
$ git lfs install && git lfs pull
$ cd desktop
$ stow -t /home/alex *
```

### Directory Structure
```
.
├── common # Dotfiles shared across all machines
├── desktop # Dotfiles for my desktop
├── laptop # Dotfiles for my laptop
├── work # Dotfiles for my work PC
├── package-list # List of installed packages
│   ├── desktop
│   ├── laptop
│   └── work
└── system-config # Files that live outside of $HOME
```

### Programs Configured
* ZSH
* Neovim
* GTK2 & GTK3
* Qt5ct
* Xresources
* Spectrwm
* Alacritty
* Picom
* Dunst
* Spicetify
* Zathura
* GLava
