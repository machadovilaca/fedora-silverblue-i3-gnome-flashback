#!/usr/bin/env bash

set -ex

I3_GNOME_FLASHBACK=40.1

FEDORA_VERSION=$(cat /etc/fedora-release | tr -dc '0-9')
MACHINE_ARCH=$(uname -m)
