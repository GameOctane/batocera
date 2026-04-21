################################################################################
#
# cargo-c
#
################################################################################

# v0.10.7+ Cargo.lock has cargo-util@0.2.28 which requires rustc 1.93;
# our buildroot has 1.92.0. Use v0.10.4 (Sep 2024, pre-MSRV bump).
CARGO_C_VERSION = v0.10.4
CARGO_C_SITE = $(call github,lu-zero,cargo-c,$(CARGO_C_VERSION))
CARGO_C_LICENSE = MIT License
CARGO_C_LICENSE_FILES = LICENSE

HOST_CARGO_C_DEPENDENCIES = host-pkgconf host-rustc host-openssl

$(eval $(host-cargo-package))
