#!/usr/bin/env bash

set -xeuo pipefail

# Start customizing your image here

# Examples:
# dnf install -y 'dnf-command(config-manager)'
# dnf config-manager --set-enabled crb
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/rhel/10/tailscale.repo
sudo dnf install tailscale

sudo systemctl enable tailscaled
