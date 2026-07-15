local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    --Yazi
    YaziFloat = { bg = opts.transparent and c.ui.bg.none or c.ui.bg.soft },
    YaziFloatBorder = { bg = opts.transparent and c.ui.bg.none or c.ui.bg.soft, fg = c.accent.cyan.default },
  }
end

return M
