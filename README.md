# aw1cks' dotfiles

This repo uses GNU Stow.

For example, to deploy the desktop configuration:
```
$ git clone https://github.com/aw1cks/dotfiles
$ cd dotfiles
$ git lfs install && git lfs pull
$ cd desktop
$ stow -d /home/alex *
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
