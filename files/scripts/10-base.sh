#!/usr/bin/env bash

set -xeuo pipefail

# Start customizing your image here

# Examples:
# dnf install -y 'dnf-command(config-manager)'
# dnf config-manager --set-enabled crb
dnf config-manager --add-repo https://pkgs.tailscale.com/stable/rhel/10/tailscale.repo
dnf install --assumeyes tailscale

systemctl enable tailscaled
