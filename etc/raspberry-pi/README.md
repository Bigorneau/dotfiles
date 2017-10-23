# config.txt

## CEC (Consumer Electronics Control)

```ini
# HDMI name of device, space allowed
cec_osd_name=Raspberry Pi 2

#cec_init
#cec_ready
#hdmi_force_cec_address

## hdmi_ignore_cec Pretends CEC is not supported at all by TV. No CEC functions will be supported.
#hdmi_ignore_cec=1

## hdmi_ignore_cec_init Doesn't sent initial active source message.
## Avoids bringing (CEC enabled) TV out of standby and channel switch when rebooting.
#hdmi_ignore_cec_init=1
```

# Packages

## Kodi

```console
pacman -Syy kodi-rbp kodi-rbp-eventclients kodi-platform kodi-rbp-addon-visualization-shadertoy \
            omxplayer-git gst-omx-rpi \
            nfs-utils libnfs \
            libcec-rpi p8-platform \
            upower unzip unrar shairplay afpfs-ng
```
