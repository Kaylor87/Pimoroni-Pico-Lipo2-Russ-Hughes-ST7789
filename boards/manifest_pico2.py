# micropython/ports/rp2/../../../
MODULES_PY = "$(PORT_DIR)/../../../pimoroni-pico/micropython/modules_py"
MODULES_LOCAL = "$(BOARD_DIR)/../../modules/python"

# SD Card
require("sdcard")

freeze(MODULES_PY, "gfx_pack.py")

freeze(MODULES_PY, "pimoroni.py")
freeze(MODULES_PY, "boot.py")

freeze(MODULES_PY, "lte.py")

freeze(MODULES_LOCAL, "ezwifi.py")

#Fonts
freeze(MODULES_LOCAL, "vga1_8x8.py")
freeze(MODULES_LOCAL, "vga1_8x16.py")
freeze(MODULES_LOCAL, "vga1_16x16.py")
freeze(MODULES_LOCAL, "vga1_16x32.py")
freeze(MODULES_LOCAL, "vga1_bold_16x16.py")
freeze(MODULES_LOCAL, "vga1_bold_16x32.py")
freeze(MODULES_LOCAL, "vga2_8x8.py")
freeze(MODULES_LOCAL, "vga2_8x16.py")
freeze(MODULES_LOCAL, "vga2_16x16.py")
freeze(MODULES_LOCAL, "vga2_16x32.py")
freeze(MODULES_LOCAL, "vga2_bold_16x16.py")
freeze(MODULES_LOCAL, "vga2_bold_16x32.py")
freeze(MODULES_LOCAL, "NotoSans_32.py")
freeze(MODULES_LOCAL, "NotoSansMono_32.py")
freeze(MODULES_LOCAL, "NotoSerif_32.py")
freeze(MODULES_LOCAL, "astrol.py")
freeze(MODULES_LOCAL, "cyrilc.py")
freeze(MODULES_LOCAL, "gotheng.py")
freeze(MODULES_LOCAL, "gothger.py")
freeze(MODULES_LOCAL, "gothita.py")
freeze(MODULES_LOCAL, "greekc.py")
freeze(MODULES_LOCAL, "greekcs.py")
freeze(MODULES_LOCAL, "greekp.py")
freeze(MODULES_LOCAL, "greeks.py")
freeze(MODULES_LOCAL, "italicc.py")
freeze(MODULES_LOCAL, "italiccs.py")
freeze(MODULES_LOCAL, "italict.py")
freeze(MODULES_LOCAL, "lowmat.py")
freeze(MODULES_LOCAL, "marker.py")
freeze(MODULES_LOCAL, "meteo.py")
freeze(MODULES_LOCAL, "music.py")
freeze(MODULES_LOCAL, "romanc.py")
freeze(MODULES_LOCAL, "romancs.py")
freeze(MODULES_LOCAL, "romand.py")
freeze(MODULES_LOCAL, "romanp.py")
freeze(MODULES_LOCAL, "romans.py")
freeze(MODULES_LOCAL, "romant.py")
freeze(MODULES_LOCAL, "scriptc.py")
freeze(MODULES_LOCAL, "scripts.py")
freeze(MODULES_LOCAL, "symbol.py")
freeze(MODULES_LOCAL, "uppmat.py")
