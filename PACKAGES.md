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
pacman -Syy xautolock expac xclip xorg-xinit mediainfo tree ncdu hddtemp vicious cups-pdf unzip vimpager wireless_tools feh lm_sensors flake8 rsync msmtp etc/expactmux cscope bash-completion screen nfs-utils alsa-tools dos2unix alsa-utils xorg-server-xephyr xf86-video-intel intel-ucode streamlink vim xorg-server xlockmore wpa_supplicant bat ripgrep openssh mplayer noto-fonts-emoji mutt awesome imagemagick gdb evince cups ttf-droid weechat nodejs mercurial git subversion lib32-mesa vlc emacs chromium firefox libreoffice-fresh
```
