dotfiles
========

Commonly used dotfiles, plus scripts to install them.

Installation
--------
The install script will move any existing dotfiles to a backup directory, then create symlinks to the versions in this repo

``` bash
git clone git://github.com/zswatson/dotfiles ~/dotfiles
cd ~/dotfiles
make install
```

Uninstallation
--------
The uninstall script will remove any symlinks created on install, then move the backups back into place

``` bash
cd ~/dotfiles
make uninstall
```

