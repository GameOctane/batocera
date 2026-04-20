################################################################################
#
# cargo-c
#
################################################################################

# v0.10.19 requires rustc 1.93 but our buildroot has 1.92.0; use last compatible version
CARGO_C_VERSION = v0.10.18
CARGO_C_SITE = $(call github,lu-zero,cargo-c,$(CARGO_C_VERSION))
CARGO_C_LICENSE = MIT License
CARGO_C_LICENSE_FILES = LICENSE

HOST_CARGO_C_DEPENDENCIES = host-pkgconf host-rustc host-openssl

$(eval $(host-cargo-package))
