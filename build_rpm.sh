#!/usr/bin/env bash

set -ex
source config.sh

# create ~/rpmbuild
sudo dnf install -y rpmdevtools rpmlint
rpmdev-setuptree

# create i3-gnome-flashback source
git clone -b ${I3_GNOME_FLASHBACK} https://github.com/regolith-linux/i3-gnome-flashback.git i3-gnome-flashback-0.0.1
tar --create --file i3-gnome-flashback-0.0.1.tar.gz i3-gnome-flashback-0.0.1
mv i3-gnome-flashback-0.0.1.tar.gz ~/rpmbuild/SOURCES

# create i3-gnome-flashback rpm
cp i3-gnome-flashback/i3-gnome-flashback.spec ~/rpmbuild/SPECS
rpmbuild -bs ~/rpmbuild/SPECS/i3-gnome-flashback.spec
rpmbuild -ba ~/rpmbuild/SPECS/i3-gnome-flashback.spec
