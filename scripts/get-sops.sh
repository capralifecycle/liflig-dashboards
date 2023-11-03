#!/bin/bash

curl -LO https://github.com/getsops/sops/releases/download/v3.8.1/sops-v3.8.1.linux.arm64

sudo mv sops-v3.8.1.linux.arm64 /usr/local/bin/sops

# Make the binary executable
sudo chmod +x /usr/local/bin/sops
