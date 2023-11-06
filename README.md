# Liflig dashboards

Repository used to hold configs for RPi powered screens at 15th floor on HQ.

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
