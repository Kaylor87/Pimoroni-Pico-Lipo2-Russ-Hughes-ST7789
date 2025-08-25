list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../")

# Wakeup module for early GPIO latch
include(modules/c/wakeup/micropython)

# Powman example for low power sleep
include(modules/c/powman/micropython)

# Russ Hughes st7789 module
include(modules/c/st7789_module/micropython)

include(usermod-common)
