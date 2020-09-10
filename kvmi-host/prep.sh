#!/bin/sh

set -e

echo '%wheel ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/10-wheel
chmod 0440 /etc/sudoers.d/10-wheel
groupadd -r wheel
gpasswd -d demo sudo
gpasswd -a demo wheel

sed -i 's/^#\s*deb-src/deb-src/' /etc/apt/sources.list

reboot
