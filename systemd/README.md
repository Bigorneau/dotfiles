Install slices with package manager

```console
makepkg -Ccf -D slices
```

```console
pacman -Ql custom-adhoc-systemd-slices
# custom-adhoc-systemd-slices /usr/
# custom-adhoc-systemd-slices /usr/lib/
# custom-adhoc-systemd-slices /usr/lib/systemd/
# custom-adhoc-systemd-slices /usr/lib/systemd/system/
# custom-adhoc-systemd-slices /usr/lib/systemd/system/custom-background-priority.slice
# custom-adhoc-systemd-slices /usr/lib/systemd/system/custom-restricted-4c1t-80-percent.slice
# custom-adhoc-systemd-slices /usr/lib/systemd/system/custom-restricted-6c2t-80-percent.slice
# custom-adhoc-systemd-slices /usr/lib/systemd/system/custom-restricted-8c2t-80-percent.slice
```

`systemctl edit lxc@llvm`

Will create a `override.conf`

```console
cat /etc/systemd/system/lxc@llvm.service.d/override.conf
#[Service]
#Slice=custom-background-priority.slice
## Additional per-process CPU and I/O priorities
#Nice=19
#IOSchedulingClass=idle
```

... and it gets applied
```console
systemctl status lxc@llvm
#● lxc@llvm.service - llvm LXC
#     Loaded: loaded (/usr/lib/systemd/system/lxc@.service; enabled; preset: disabled)
#    Drop-In: /etc/systemd/system/lxc@llvm.service.d
#             └─override.conf
#     Active: active (running) since Wed 2026-10-21 16:52:18 CEST; 23min ago
# Invocation: a9dfe822708742fd9981a7e83e30fecf
#    Process: 668508 ExecStart=/usr/bin/lxc-start -d -n llvm -p /run/lxc-llvm.pid (code=exited, status=0/SUCCESS)
#   Main PID: 668510 (lxc-start)
#      Tasks: 0 (limit: 32768)
#     Memory: 1M (peak: 2.7M)
#        CPU: 8ms
#     CGroup: /custom.slice/custom-background.slice/custom-background-priority.slice/lxc@llvm.service
#             ‣ 668510 "[lxc monitor] /var/lib/lxc llvm"
```
