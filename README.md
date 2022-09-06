# fedora-silverblue-i3-gnome-flashback [![LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

Simple automation to install i3 with GNOME-Flashback session in Fedora
Silverblue. Since Fedora Silverblue does not allow a direct edition of the
`/usr` directory, this tool creates an RPM package to deal with the creation of
the necessary files.

i3 with GNOME-Flashback session allows us to use the i3 window manager but still
use all GNOME backbone under the hood.

The RPM built here uses the files amazingly created and maintained by
[regolith-linux](https://github.com/regolith-linux) in
https://github.com/regolith-linux/i3-gnome-flashback. Many thanks to them.

## Usage

```bash
# Build RPM and install i3 gnome-flashback and i3-gnome-flashback
./install.sh

# Reboot your machine so that layered packages are applied
systemctl reboot
```

After reboot, in the login screen, change the session to `GNOME Flashback (i3)`
instead of `GNOME`.

## References

https://gitlab.gnome.org/GNOME/gnome-flashback

https://github.com/regolith-linux/i3-gnome-flashback
