# profile, shells

```bash
# https://wiki.archlinux.org/index.php/Pkgfile

pacman -Syy pkgfile zsh bash grml-zsh-config zsh-lovers
```

# python

```bash
pacman -Syy flake8
```

# system

## cups

```bash
pacman -Syy cups cups-pdf
systemctl enable org.cups.cupsd.service
```

## awesome

```bash
pacman -Syy lua-luajson lua-sec
```

## xorg

```bash
pacman -Syy xorg-xinit xorg-server-xephyr xorg-server
```

## apps

```bash
pacman -Syy livestreamer xautolock xlockmore msmtp xclip mediainfo tree ncdu mutt  cups-pdf unzip wireless_tools vimpager lm_sensors feh flake8 rsync tmux screen vim cscope bash-completion nfs-utils alsa-tools dos2unix ttf-symbola wpa_supplicant mplayer mutt gdb imagemagick cups evince ttf-droid weechat mercurial nodejs git subversion vlc emacs firefox chromium libreoffice-fresh
```
