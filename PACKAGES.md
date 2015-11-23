# profile, shells

```bash
# https://wiki.archlinux.org/index.php/Pkgfile

pacman -Syy pkgfile grml-zsh-config
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

## apps

```bash
pacman -Syy livestreamer
```
