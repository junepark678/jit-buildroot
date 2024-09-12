LIBUSBMUXD_VERSION = 2.1.0
LIBUSBMUXD_SITE = https://github.com/libimobiledevice/libusbmuxd/releases/download/2.1.0
LIBUSBMUXD_SOURCE = libusbmuxd-2.1.0.tar.bz2
LIBUSBMUXD_LICENSE = LGPL-2.1
LIBUSBMUXD_LICENSE_FILES = COPYING
LIBUSBMUXD_INSTALL_STAGING = YES
LIBUSBMUXD_DEPENDENCIES = libplist libimobiledevice-glue
LIBUSBMUXD_CONF_OPTS = --disable-manpages
LIBUSBMUXD_AUTORECONF = YES

$(eval $(autotools-package))
