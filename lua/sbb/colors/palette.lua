local util = require("sbb.util")

local palette = {}
local colors = {
  orange = "#D6A375",
  bright_orange = "#F57A0D",

  blue = "#9ACDE3",
  blue_briht = "#0DAEF5",

  green = "#ABE3D0",
  green_bright = "#47FFC1",

  red = "#E39A96",
  red_bright = "#D6746F",

  yellow = "#F5F3C2",
  yellow_bright = "#D6D375",

  purple = "#DAC2F5",
  purple_bright = "#A375D6",

  cyan = "#9AE3E1",
  cyan_bright = "#0DF5EE",

  neutral = "#5A7070",

  -- gray
  gray = "#232E2E",
  gray1 = "#354444",
  gray2 = "#475A5A",
  gray3 = "#5A7070",
  gray4 = "#6C8686",
}
--
palette.dark = util.deep_merge(colors, {
  bg = "#0A0F11",
  fg = "#E6E6E1",
})

return palette
