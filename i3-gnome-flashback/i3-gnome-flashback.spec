Name:           i3-gnome-flashback
Version:        0.0.1
Release:        1%{?dist}
Summary:        Use i3 in GNOME-Flashback session

License:        MIT
Source0:        %{name}-%{version}.tar.gz

%description
Use i3 in GNOME-Flashback session

%prep
%setup -q

%install
mkdir -p $RPM_BUILD_ROOT/usr/share/xsessions
mkdir -p $RPM_BUILD_ROOT/usr/share/applications
mkdir -p $RPM_BUILD_ROOT/usr/share/gnome-session/sessions
mkdir -p $RPM_BUILD_ROOT/usr/bin
mkdir -p $RPM_BUILD_ROOT/usr/share/glib-2.0/schemas

cp files/i3-gnome-flashback-session.desktop     $RPM_BUILD_ROOT/usr/share/xsessions/i3-gnome-flashback-session.desktop
cp files/i3-gnome-flashback.desktop             $RPM_BUILD_ROOT/usr/share/applications/i3-gnome-flashback.desktop
cp files/i3-gnome-flashback.session             $RPM_BUILD_ROOT/usr/share/gnome-session/sessions/i3-gnome-flashback.session
cp files/i3-gnome-flashback-session             $RPM_BUILD_ROOT/usr/bin/i3-gnome-flashback-session
cp files/i3-gnome-flashback                     $RPM_BUILD_ROOT/usr/bin/i3-gnome-flashback
cp files/i3-gnome-flashback.gschema.override    $RPM_BUILD_ROOT/usr/share/glib-2.0/schemas/01_i3-gnome-flashback.gschema.override

%files
/usr/share/xsessions/i3-gnome-flashback-session.desktop
/usr/share/applications/i3-gnome-flashback.desktop
/usr/share/gnome-session/sessions/i3-gnome-flashback.session
/usr/bin/i3-gnome-flashback-session
/usr/bin/i3-gnome-flashback
/usr/share/glib-2.0/schemas/01_i3-gnome-flashback.gschema.override

%post
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

%changelog
* Tue Sep 06 2022 machadovilaca
-
