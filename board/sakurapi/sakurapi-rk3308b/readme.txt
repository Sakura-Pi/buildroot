Sakura Pi RK3308B
===================================

Build:

  $ make sakurapi_rk3308b_defconfig
  $ make

Files created in output directory
=================================

output/images

├── boot.vfat
├── idbloader.img
├── Image
├── rk3308_bl31_v2.26.elf
├── rk3308_ddr_589MHz_uart2_m1_v2.10.bin
├── rk3308-sakurapi-rk3308b.dtb
├── rootfs.ext2
├── rootfs.ext4 -> rootfs.ext2
├── rootfs.tar
├── sdcard.img
├── u-boot.bin
└── u-boot.itb
└── u-boot-rockchip.bin

Creating bootable SD card:
==========================

Simply invoke (as root)

sudo dd if=output/images/sdcard.img of=/dev/sdX && sync

Where X is your SD card device

Serial console
--------------

Baudrate for this board is 1500000

Docs reference:
https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce
