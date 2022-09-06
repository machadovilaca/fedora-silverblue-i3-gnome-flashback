#!/usr/bin/env bash

set -ex
source config.sh

rm -rf i3-gnome-flashback-0.0.1
podman rm -f i3-gnome-flashback

rm -rf ~/rpmbuild/BUILD/i3-gnome-flashback-0.0.1
rm -rf ~/rpmbuild/RPMS/${MACHINE_ARCH}/i3-gnome-flashback-0.0.1-1.fc${FEDORA_VERSION}.${MACHINE_ARCH}.rpm
rm -rf ~/rpmbuild/SOURCES/i3-gnome-flashback-0.0.1.tar.gz
rm -rf ~/rpmbuild/SPECS/i3-gnome-flashback.spec
rm -rf ~/rpmbuild/SPECS/i3-gnome-flashback.spec
rm -rf ~/rpmbuild/SRPMS/i3-gnome-flashback-0.0.1-1.fc${FEDORA_VERSION}.src.rpm
