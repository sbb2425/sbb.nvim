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
      dark = util.blend(v.orange, v.bg, 0.1),
      bright = v.orange_bright,
    },

    green = {
      default = v.green,
      soft = util.blend(v.green, v.bg, 0.45),
      dim = util.blend(v.green, v.bg, 0.25),
      dark = util.blend(v.green, v.bg, 0.1),
      bright = v.green_bright,
    },

    blue = {
      default = v.blue,
      soft = util.blend(v.blue, v.bg, 0.45),
      dim = util.blend(v.blue, v.bg, 0.25),
      dark = util.blend(v.blue, v.bg, 0.1),
      bright = v.blue_bright,
    },

    red = {
      default = v.red,
      soft = util.blend(v.red, v.bg, 0.45),
      dim = util.blend(v.red, v.bg, 0.25),
      dark = util.blend(v.red, v.bg, 0.1),
      bright = v.red_bright,
    },

    yellow = {
      default = v.yellow,
      soft = util.blend(v.yellow, v.bg, 0.45),
      dim = util.blend(v.yellow, v.bg, 0.25),
      dark = util.blend(v.yellow, v.bg, 0.1),
      bright = v.yellow_bright,
    },

    purple = {
      default = v.purple,
      soft = util.blend(v.purple, v.bg, 0.45),
      dim = util.blend(v.purple, v.bg, 0.25),
      dark = util.blend(v.purple, v.bg, 0.1),
      bright = v.purple_bright,
    },

    cyan = {
      default = v.cyan,
      soft = util.blend(v.cyan, v.bg, 0.45),
      dim = util.blend(v.cyan, v.bg, 0.25),
      dark = util.blend(v.cyan, v.bg, 0.1),
      bright = v.cyan_bright,
    },

    neutral = {
      default = v.neutral,
      soft = util.blend(v.neutral, v.bg, 0.45),
      dim = util.blend(v.neutral, v.bg, 0.25),
      dark = util.blend(v.neutral, v.bg, 0.1),
    },

    gray = {
      default = v.gray1,
      soft = v.gray2,
      dim = v.gray,
      dark = util.blend(v.gray, v.bg, 0.1),
      bright = v.gray3,
    },
  }

  colors.ui = {
    bg = {
      default = v.bg,
      sidebar = util.lighten(v.bg, 0.02),
      float = util.lighten(v.bg, 0.04),
      option = util.lighten(v.bg, 0.08),
      -- inverse = util.invert(v.fg),
      inverse = v.fg,
      none = "NONE",
    },

    fg = {
      default = v.fg,
      muted = util.blend(v.fg, v.bg, 0.68),
      subtle = util.blend(v.fg, v.bg, 0.52),
      faint = util.blend(v.fg, v.bg, 0.48),
      disabled = util.blend(v.fg, v.bg, 0.32),
      dark = util.blend(v.fg, v.bg, 0.1),
      -- inverse = util.invert(v.bg),
      inverse = v.bg,
      none = "NONE",
    },

    border = {
      default = colors.accent.gray.dim,
      subtle = util.lighten(v.bg, 0.12),
      strong = util.lighten(v.bg, 0.28),
    },

    -- cursorline = util.lighten(v.bg, 0.04),
    cursorline = colors.accent.gray.dim,
    -- visual = util.blend(v.fg, v.bg, 0.12),
    visual = colors.accent.gray.default,
  }

  colors.syntax = {
    comments = colors.accent.gray.soft,

    constants = colors.accent.yellow.default,
    strings = colors.accent.green.default,

    identifiers = colors.ui.fg.default,
    functions = colors.accent.orange.default,

    -- keywords = util.blend(v.fg, v.bg, 0.20),
    keywords = colors.accent.neutral.default,
    operators = util.blend(v.fg, v.bg, 0.60),

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
