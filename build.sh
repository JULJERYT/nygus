#!/bin/bash
ESPTOOL_PATH="/bin"
ESPTOOL=$([[ -f $ESPTOOL_PATH/esptool.py ]] && echo "$ESPTOOL_PATH/esptool.py" || echo "$ESPTOOL_PATH/esptool")

$ESPTOOL --chip esp32 merge_bin --output Bruce3_cplus2.bin 0x1000 .pio/build/m5stack-cplus2/bootloader.bin 0x8000 .pio/build/m5stack-cplus2/partitions.bin 0x10000 .pio/build/m5stack-cplus2/firmware.bin