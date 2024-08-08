# Liflig dashboards

Repository used to hold configs for RPi powered screens at 15th floor on HQ.
The configs are read after boot, using their hostname.


Config files are encrypted using [sops](https://github.com/getsops/sops)

Check that the keys from 1pw is used for encrypting files when working with configs.
Keys should be stored in `$XDG_CONFIG_HOME/sops/age/keys.txt` (MacOS: `$HOME/Library/Application\ Support/sops/age/keys.txt`).

Format:

```
# Created at:
# public key:
PRIVATE_KEY
```

Keys can be found at 1pw: Raspberry Pi Dashboards

## Making a new raspi

1. Flash the SD card. (Kristian has a premade img). This has sops key set up, wifi credentials, xfce auto start of chrome script.
2. Change the hostname in `sudo raspi-config` and reboot. Fix chromuium after hostname change: `rm ~/.config/chromium/Singleton*` .
3. `sudo apt update && sudo apt upgrade`
4. `cd ~/Desktop && ./get-sops.sh`
6. Update scripts: `cd ~/Desktop && rm chrome-startup.sh && wget https://raw.githubusercontent.com/capralifecycle/liflig-dashboards/master/scripts/chrome-startup.shi && chmod +x chrome-startup.sh`
7.  `sudo apt install unclutter`

