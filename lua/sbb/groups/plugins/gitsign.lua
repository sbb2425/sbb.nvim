local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    -- GitSign
    -- для добавленных строк
    GitSignsAdd = { fg = c.accent.blue.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    -- для изменённых строк
    GitSignsChange = { fg = c.accent.blue.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    -- для удалённых строк
    GitSignsDelete = { fg = c.accent.red.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    -- для изменённых и удалённых строк
    GitSignsChangedelete = { fg = c.accent.cyan.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    -- для удалённых строк в начале файла
    GitSignsTopdelete = { fg = c.accent.orange.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    -- для неотслеживаемых файлов
    GitSignsUntracked = { fg = c.accent.gray.dark, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
  }
end

return M
