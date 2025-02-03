## from http://standards.freedesktop.org/menu-spec/latest/

# XDG_CONFIG_DIRS
if [ -z "${XDG_CONFIG_DIRS}" ] ; then
   XDG_CONFIG_DIRS=/etc/xdg:/usr/share/desktop-base/kf5-settings
   export XDG_CONFIG_DIRS
fi
