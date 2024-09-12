USBMUXD_VERSION = master
USBMUXD_SITE = https://github.com/libimobiledevice/usbmuxd/archive
USBMUXD_SOURCE = master.tar.gz
USBMUXD_LICENSE = LGPL-2.1
USBMUXD_LICENSE_FILES = COPYING
USBMUXD_INSTALL_STAGING = YES
USBMUXD_DEPENDENCIES = libplist libusbmuxd libusb
USBMUXD_CONF_OPTS = --disable-manpages --without-preflight --without-systemd
USBMUXD_AUTORECONF = YES
define USBMUXD_PRE_CONFIGURE_VERSION
	echo "1.1.2" > $(@D)/.tarball-version
endef
USBMUXD_PRE_PATCH_HOOKS += USBMUXD_PRE_CONFIGURE_VERSION

$(eval $(autotools-package))
