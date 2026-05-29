local config = require("sbb.config")

local M = {}

---@param opts? sbb.Config
function M.colorscheme(opts)
  opts = config.extend(opts)

  local colors = require("sbb.colors").setup(opts)
  local groups = require("sbb.groups").setup(opts, colors)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_scheme then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_scheme = "carvion"

  for group, hl in pairs(groups) do
    if type(hl) == "string" then
      vim.api.nvim_set_hl(0, group, { link = hl })
      goto continue
    end

    vim.api.nvim_set_hl(0, group, hl)
    ::continue::
  end
end

M.setup = config.setup

return M
