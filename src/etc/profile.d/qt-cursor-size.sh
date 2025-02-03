# shellcheck shell=dash

# Have QT applications use the GTK cursor size.
# This is not a perfect solution, as the cursor size is not updated when
# the user changes the cursor size in the GNOME settings.
# This is because the XCURSOR_SIZE environment variable is only read
# when login shell is started, and is not updated when the user changes
# the cursor size in the GNOME settings.
# This is a known issue, and there is no known workaround.
# See https://bugreports.qt.io/browse/QTBUG-67579
XCURSOR_SIZE="$(gsettings get org.gnome.desktop.interface cursor-size)"
export XCURSOR_SIZE
