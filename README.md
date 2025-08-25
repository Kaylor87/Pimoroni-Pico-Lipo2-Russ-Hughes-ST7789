I forked this repo from the official Pimoroni Pico Lipo 2 firmware repo, and added to it so that when it generates a new firmware file, it also includes the Russ Hughes st7789_mpy driver (https://github.com/russhughes/st7789_mpy).

Located in the 'firmware' folder, you will find the .uf2 which you can flash onto a standard "Pimoroni Pico Lipo 2" board. It will allow you to use all 520KB of ram plus the additional 8MB which are pulled in from the physical PSRAM chip this board has.

In addition, it will allow you to use the st7789 library commands that Russ Hughes has put together, for use with various SPI screens such as the Waveshare Pico-LCD-1.14" and the Pico-LCD-1.3" (see Russ Hughes' st7789_mpy repo for more info). I have also frozen all of the fonts from the same repo into this firmware file as well. 

__________________________________________________________________
# Pico LiPo <!-- omit in toc -->

## Pimoroni Pico MicroPython for Pico LiPo Boards <!-- omit in toc -->

This repository is home to the MicroPython firmware and examples for Pico LiPo,
Pico LiPo 2 and Pico LiPo 2XL W.

- [Get Pico Lipo](#get-pico-lipo)
- [Download Firmware](#download-firmware)
- [Installation](#installation)


## Get Pico Lipo

* Pico LiPo (4MB, 16MB) - https://shop.pimoroni.com/products/pimoroni-pico-lipo
* Pico LiPo 2 - https://shop.pimoroni.com/products/pimoroni-pico-lipo-2
* Pico LiPo 2XL W - https://shop.pimoroni.com/products/pimoroni-pico-lipo-2-xl-w

## Download Firmware

You can find the latest firmware releases at [https://github.com/pimoroni/pico-lipo/releases/latest](https://github.com/pimoroni/pico-lipo/releases/latest).

For each board there are two choices, a regular build that just updates the firmware and a "-with-examples" build which includes a selection of [examples](examples) depending upon your board.

:warning: If you've changed any of the code on your board then back up before flashing "-with-examples" - *your files will be erased!*

## Installation

1. Connect your LiPo board to your computer with a USB Type-C cable.
2. Put your device into bootloader mode by holding down the BOOT button and toggling the power off/on.
3. Drag and drop the downloaded .uf2 to the "RP2350" drive that appears.
4. Your device should reset, and you should be able to connect to it using Thonny.
