local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  local bg = opts.transparent and c.ui.bg.none or c.ui.bg.soft

  return {
    WhichKey = { fg = c.accent.cyan.default }, -- Сама клавиша
    WhichKeySeparator = { fg = c.accent.gray.dark }, -- Разделитель между клавишей и описанием
    WhichKeyGroup = { fg = c.accent.orange.default }, -- Название группы
    WhichKeyDesc = { fg = c.accent.cyan.dark }, -- Текст описания клавиши
    WhichKeyNormal = { fg = c.ui.fg.dark, bg = bg }, -- Фон/обычный текст окна which-key
    WhichKeyTitle = { fg = c.ui.fg.dark, bg = bg }, -- Заголовок окна
    WhichKeyBorder = { fg = c.accent.cyan.default, bg = bg }, -- Рамка окна
    -- WhichKeyValue	Comment	Значения, выводимые плагинами (marks, registers и т.д.)
    -- WhichKeyIcon	@markup.link	Иконки маппингов
  }
end

return M
