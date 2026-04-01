#!/bin/sh

BOARD_DIR=$(dirname "$0")
install -m 0644 -D "$BOARD_DIR/extlinux.conf" "$BINARIES_DIR/extlinux/extlinux.conf"

# AP6255 Bluetooth firmware: btbcm driver looks in /lib/firmware/brcm/
if [ -f "$TARGET_DIR/lib/firmware/BCM4345C0.hcd" ] && \
   [ ! -e "$TARGET_DIR/lib/firmware/brcm/BCM4345C0.hcd" ]; then
	ln -sf ../BCM4345C0.hcd "$TARGET_DIR/lib/firmware/brcm/BCM4345C0.hcd"
fi
