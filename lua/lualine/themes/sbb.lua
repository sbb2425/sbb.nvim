local palette = require("sbb.colors").setup()
local sbb = {}

sbb.normal = {
  a = {
    fg = palette.ui.fg.inverse,
    bg = palette.accent.orange.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.orange.default,
    bg = palette.ui.bg.float,
  },

  c = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.default,
  },
}

sbb.insert = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.green.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.green.default,
    bg = palette.ui.bg.float,
  },
}

sbb.visual = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.neutral.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.neutral.default,
    bg = palette.ui.bg.float,
  },
}

sbb.replace = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.red.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.red.default,
    bg = palette.ui.bg.float,
  },
}

sbb.command = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.blue.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.blue.default,
    bg = palette.ui.bg.float,
  },
}

sbb.terminal = {
  a = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.option,
    gui = "bold",
  },

  b = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.float,
  },
}

sbb.inactive = {
  a = {
    fg = palette.ui.fg.faint,
    bg = palette.ui.bg.sidebar,
  },

  b = {
    fg = palette.ui.fg.faint,
    bg = palette.ui.bg.sidebar,
  },

  c = {
    fg = palette.ui.fg.muted,
    bg = palette.ui.bg.sidebar,
  },
}

return sbb
