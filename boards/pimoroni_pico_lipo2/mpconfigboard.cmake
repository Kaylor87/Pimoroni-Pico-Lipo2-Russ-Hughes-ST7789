# cmake file for Pimoroni Pico LiPo
set(PICO_BOARD "pimoroni_pico_lipo2")
set(PICO_PLATFORM "rp2350")

set(PICO_BOARD_HEADER_DIRS ${CMAKE_CURRENT_LIST_DIR})

# To change the gpio count for QFN-80
set(PICO_NUM_GPIOS 48)

# Links micropy_lib_lwip and sets MICROPY_PY_LWIP = 1
# Picked up and expanded upon in mpconfigboard.h
set(MICROPY_PY_LWIP ON)

include(enable_cyw43.cmake)

# Board specific version of the frozen manifest
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)

set(PIMORONI_UF2_MANIFEST ${CMAKE_CURRENT_LIST_DIR}/manifest.txt)
set(PIMORONI_UF2_DIR ${CMAKE_CURRENT_LIST_DIR}/../../examples)
include(${CMAKE_CURRENT_LIST_DIR}/../common.cmake)

# Add Russ Hughes ST7789 user C module
message(STATUS "ST7789 clone path resolves to: ${CMAKE_SOURCE_DIR}/st7789_build/st7789_mpy/")
set(USER_C_MODULES ${CMAKE_SOURCE_DIR}/st7789_build/st7789_mpy/micropython.cmake)
