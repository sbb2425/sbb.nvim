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
      bright = v.orange_dark,
    },

    green = {
      default = v.green,
      soft = util.blend(v.green, v.bg, 0.45),
      dim = util.blend(v.green, v.bg, 0.25),
      dark = v.green_dark,
      bright = v.green_dark,
    },

    blue = {
      default = v.blue,
      soft = util.blend(v.blue, v.bg, 0.45),
      dim = util.blend(v.blue, v.bg, 0.25),
      dark = v.blue_dark,
      bright = v.blue_dark,
    },

    red = {
      default = v.red,
      soft = util.blend(v.red, v.bg, 0.45),
      dim = util.blend(v.red, v.bg, 0.25),
      dark = v.red_dark,
      bright = v.red_dark,
    },

    yellow = {
      default = v.yellow,
      soft = util.blend(v.yellow, v.bg, 0.45),
      dim = util.blend(v.yellow, v.bg, 0.25),
      dark = v.yellow_dark,
      bright = v.yellow_dark,
    },

    purple = {
      default = v.purple,
      soft = util.blend(v.purple, v.bg, 0.45),
      dim = util.blend(v.purple, v.bg, 0.25),
      dark = v.purple_dark,
      bright = v.purple_dark,
    },

    cyan = {
      default = v.cyan,
      soft = util.blend(v.cyan, v.bg, 0.45),
      dim = util.blend(v.cyan, v.bg, 0.25),
      dark = v.cyan_dark,
      bright = v.cyan_dark,
    },

    neutral = {
      default = v.neutral,
      soft = util.blend(v.neutral, v.bg, 0.45),
      dim = util.blend(v.neutral, v.bg, 0.25),
      dark = util.blend(v.neutral, v.bg, 0.12),
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
      sidebar = v.bg_soft,
      float = v.bg_soft,
      option = v.bg_soft,
      -- inverse = util.invert(v.fg),
      inverse = v.fg,
      soft = v.bg_soft,
      light = v.bg_light,
      none = "NONE",
    },

    fg = {
      default = v.fg,
      muted = util.blend(v.fg, v.bg, 0.68),
      subtle = util.blend(v.fg, v.bg, 0.52),
      faint = util.blend(v.fg, v.bg, 0.48),
      disabled = v.neutral,
      dark = v.fg_dark,
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
    cursorline = colors.accent.bg.soft,
    visual = colors.accent.bg.light,
  }

  colors.syntax = {
    comments = colors.accent.gray.default,

    constants = colors.accent.yellow.default,
    strings = colors.accent.cyan.default,

    identifiers = colors.ui.fg.default,
    functions = colors.accent.orange.default,

    keywords = colors.accent.fg.dark,
    operators = colors.accent.gray.soft,

    types = colors.accent.red.default,
    members = colors.accent.neutral.default,
    links = colors.accent.blue.default,
  }
  colors.diag = {
    error = {
      fg = colors.accent.red.default,
      bg = util.blend(colors.accent.red.default, colors.ui.bg.default, 0.10),
    },
    warn = {
      fg = colors.accent.yellow.default,
      bg = util.blend(colors.accent.yellow.default, colors.ui.bg.default, 0.10),
    },
    info = {
      fg = colors.accent.blue.default,
      bg = util.blend(colors.accent.blue.default, colors.ui.bg.default, 0.10),
    },
    hint = {
      fg = colors.accent.green.default,
      bg = util.blend(colors.accent.green.default, colors.ui.bg.default, 0.10),
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
      bg = util.blend(colors.accent.green.default, colors.ui.bg.default, 0.10),
    },
    change = {
      fg = colors.accent.blue.default,
      bg = util.blend(colors.accent.blue.default, colors.ui.bg.default, 0.10),
    },
    delete = {
      fg = colors.accent.red.default,
      bg = util.blend(colors.accent.red.default, colors.ui.bg.default, 0.10),
    },
    text = {
      fg = colors.ui.fg.default,
      bg = util.blend(colors.ui.fg.default, colors.ui.bg.default, 0.16),
    },
  }

  return colors
end

return M
