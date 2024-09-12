################################################################################
#
# tailscale
#
################################################################################

TAILSCALE_VERSION = 1.72.1
TAILSCALE_SITE = $(call github,tailscale,tailscale,v$(TAILSCALE_VERSION))
TAILSCALE_LICENSE = BSD-3-Clause
TAILSCALE_LICENSE_FILES = LICENSE
TAILSCALE_GOMOD = tailscale.com
TAILSCALE_BUILD_TARGETS = cmd/tailscaled
TAILSCALE_INSTALL_BINS = tailscaled
TAILSCALE_TAGS = ts_omit_aws,ts_omit_bird,ts_omit_tap,ts_omit_kube,ts_omit_completion
TAILSCALE_LDFLAGS = \
	-X tailscale.com/version.longStamp=$(TAILSCALE_VERSION) \
	-X tailscale.com/version.shortStamp=$(TAILSCALE_VERSION)

$(eval $(golang-package))
