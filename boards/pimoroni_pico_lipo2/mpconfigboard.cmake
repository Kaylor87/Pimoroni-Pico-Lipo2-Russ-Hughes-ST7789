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

# --- saner include for Russ Hughes ST7789 user module ---
message(STATUS "CMAKE_SOURCE_DIR = ${CMAKE_SOURCE_DIR}")
message(STATUS "Attempting to include ST7789 CMake from (relative to CMAKE_SOURCE_DIR): st7789_build/st7789_mpy/micropython.cmake")

# compute the candidate path that CMake will use
set(_cand0 "${CMAKE_SOURCE_DIR}/st7789_build/st7789_mpy/micropython.cmake")
set(_cand1 "${CMAKE_SOURCE_DIR}/micropython/ports/rp2/st7789_build/st7789_mpy/micropython.cmake")
message(STATUS "Candidates: ${_cand0}  and  ${_cand1}")

if(EXISTS "${_cand0}")
  message(STATUS "Including ST7789 usermod from: ${_cand0}")
  include("${_cand0}")
elseif(EXISTS "${_cand1}")
  message(STATUS "Including ST7789 usermod from: ${_cand1}")
  include("${_cand1}")
else()
  message(WARNING "ST7789 CMake not found in either candidate location.")
  message(WARNING "Looked for: ${_cand0}")
  message(WARNING "          ${_cand1}")
  # Fallback: fail early and loudly so CI doesn't silently continue without the module
  message(FATAL_ERROR "ST7789 usermod CMake file not found; please ensure the file is checked out in one of the above paths before configuring.")
endif()
# --- end ST7789 include block ---

