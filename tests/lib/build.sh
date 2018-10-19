#!/bin/sh

set -e

apt update
apt install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y snapd snapcraft
snap install core
echo "Build snap"
# FIXME: classic does not pass environment, so work around here
cd $(cat /run/SPREAD_PATH)
snapcraft clean
snapcraft
