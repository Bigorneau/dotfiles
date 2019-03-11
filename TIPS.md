# pacman

To list explicitly installed packages not in base nor base-devel:

```console
comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort) | sort -n
```

To list explicitly installed packages not in base nor base-devel with size and description:

```console
expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <(pacman -Qqg base base-devel | sort)) | sort -n
```
