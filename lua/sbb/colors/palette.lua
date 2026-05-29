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

  neutral = "#787b79",

  gray = "#222728",
  gray1 = "#3b3f3f",
  gray2 = "#535756",
  gray3 = "#6c6f6d",
}

palette.dark = util.deep_merge(colors, {
  bg = "#0A0F11",
  fg = "#E6E6E1",
})

return palette
