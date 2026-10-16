local palette = require("sbb.colors.palette")
local util = require("sbb.util")

local M = {}

function M.setup(opts)
  opts = require("sbb.config").extend(opts)
  local v = palette.dark

  ---@class sbb.ColorScheme
  local colors = {}

  colors.accent = {
    orange = {
      default = v.orange,
      soft = util.blend(v.orange, v.bg, 0.45),
      dim = util.blend(v.orange, v.bg, 0.25),
      dark = v.orange_dark,
      bright = v.orange_light,
    },

    green = {
      default = v.green,
      soft = util.blend(v.green, v.bg, 0.45),
      dim = util.blend(v.green, v.bg, 0.25),
      dark = v.green_dark,
      bright = v.green_light,
    },

    blue = {
      default = v.blue,
      soft = util.blend(v.blue, v.bg, 0.45),
      dim = util.blend(v.blue, v.bg, 0.25),
      dark = v.blue_dark,
      bright = v.blue_light,
    },

    red = {
      default = v.red,
      soft = util.blend(v.red, v.bg, 0.45),
      dim = util.blend(v.red, v.bg, 0.25),
      dark = v.red_dark,
      bright = v.red_light,
    },

    yellow = {
      default = v.yellow,
      soft = util.blend(v.yellow, v.bg, 0.45),
      dim = util.blend(v.yellow, v.bg, 0.25),
      dark = v.yellow_dark,
      bright = v.yellow_light,
    },

    purple = {
      default = v.purple,
      soft = util.blend(v.purple, v.bg, 0.45),
      dim = util.blend(v.purple, v.bg, 0.25),
      dark = v.purple_dark,
      bright = v.purple_light,
    },

    cyan = {
      default = v.cyan,
      soft = util.blend(v.cyan, v.bg, 0.45),
      dim = util.blend(v.cyan, v.bg, 0.25),
      dark = v.cyan_dark,
      bright = v.cyan_light,
    },

    neutral = {
      default = v.neutral,
      dark = v.neutral_dark,
      dark_soft = v.neutral_dark_soft,
      light = v.neutral_light,
      light_soft = v.neutral_light_soft,
      soft = util.blend(v.neutral, v.bg, 0.45),
      dim = util.blend(v.neutral, v.bg, 0.25),
    },

    gray = {
      default = v.gray,
      soft = v.gray_soft,
      dim = util.blend(v.gray, v.bg, 0.28),
      dark = v.gray_dark,
      bright = v.gray_light,
    },
  }

  colors.ui = {
    bg = {
      default = v.bg,
      dark = v.bg_dark,
      light = v.bg_light,
      soft = v.bg_soft,
      sidebar = v.bg_soft,
      float = v.bg_soft,
      option = v.bg_soft,
      inverse = v.fg,
      none = "NONE",
    },

    fg = {
      default = v.fg,
      dark = v.fg_dark,
      light = v.fg_light,
      soft = v.fg_soft,
      muted = util.blend(v.fg, v.bg, 0.68),
      subtle = util.blend(v.fg, v.bg, 0.52),
      faint = util.blend(v.fg, v.bg, 0.48),
      disabled = v.neutral,
      neutral = v.neutral,
      -- inverse = util.invert(v.bg),
      inverse = v.bg,
      none = "NONE",
    },

    border = {
      default = colors.accent.cyan.default,
      subtle = colors.accent.cyan.dark,
      strong = colors.accent.cyan.default,
    },

    -- cursorline = util.lighten(v.bg, 0.04),
    cursorline = v.bg_light,
    visual = v.bg_soft,
  }

  colors.syntax = {
    comments = colors.accent.neutral.dark_soft,

    constants = colors.accent.yellow.default,
    booleans = colors.accent.blue.default,
    strings = colors.accent.cyan.default,

    identifiers = colors.ui.fg.default,
    functions = colors.accent.orange.default,

    keywords = colors.accent.neutral.default,
    operators = colors.accent.neutral.light_soft,

    types = colors.accent.red.default,
    members = colors.accent.neutral.light,
    links = colors.accent.blue.bright,
  }
  colors.diag = {
    error = {
      fg = colors.accent.red.default,
      bg = colors.ui.bg.default,
    },
    warn = {
      fg = colors.accent.yellow.default,
      bg = colors.ui.bg.default,
    },
    info = {
      fg = colors.accent.cyan.default,
      bg = colors.ui.bg.default,
    },
    hint = {
      fg = colors.accent.green.default,
      bg = colors.ui.bg.default,
    },
  }
  colors.git = {
    added = colors.accent.green.default,
    changed = colors.accent.blue.default,
    removed = colors.accent.red.default,
  }
  colors.diff = {
    add = {
      fg = colors.accent.green.default,
      bg = colors.ui.bg.default,
    },
    change = {
      fg = colors.accent.blue.default,
      bg = colors.ui.bg.default,
    },
    delete = {
      fg = colors.accent.red.default,
      bg = colors.ui.bg.default,
    },
    text = {
      fg = colors.ui.fg.default,
      bg = colors.ui.bg.default,
    },
  }

  return colors
end

return M
