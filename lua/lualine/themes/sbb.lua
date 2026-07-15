local palette = require("sbb.colors").setup()
local M = {}

M.normal = {
  a = {
    fg = palette.accent.gray.bright,
    bg = palette.ui.bg.light,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.insert = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.cyan.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.visual = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.orange.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.replace = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.red.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.command = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.blue.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.terminal = {
  a = {
    fg = palette.ui.fg.default,
    bg = palette.accent.purple.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  c = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },
}

M.inactive = {
  a = {
    fg = palette.accent.gray.soft,
    bg = palette.ui.bg.soft,
  },

  b = {
    fg = palette.accent.gray.default,
    bg = palette.ui.bg.default,
  },

  c = {
    fg = palette.accent.gray.dark,
    bg = palette.ui.bg.default,
  },
}

return M
