#!/usr/bin/env bash

set -ex
source config.sh

function cleanup {
  ./cleanup.sh
}

trap cleanup EXIT

# Create i3-gnome-flashback rpm
toolbox create i3-gnome-flashback
toolbox run --container i3-gnome-flashback ./build_rpm.sh

# Install 
sudo rpm-ostree install i3 gnome-flashback ~/rpmbuild/RPMS/${MACHINE_ARCH}/i3-gnome-flashback-0.0.1-1.fc${FEDORA_VERSION}.${MACHINE_ARCH}.rpm
