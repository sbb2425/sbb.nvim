local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {

    -- окно меню
    BlinkCmpMenu = { fg = c.accent.gray.default, bg = c.ui.bg.soft },

    -- граница меню
    BlinkCmpMenuBorder = { fg = c.accent.cyan.default, bg = c.ui.bg.soft },

    -- выбранный элемент
    BlinkCmpMenuSelection = { fg = c.ui.fg.default, bg = c.ui.bg.light },

    -- текст элемента
    -- BlinkCmpLabel

    -- иконка типа
    -- BlinkCmpKind

    -- для конкретных типов (например, BlinkCmpKindFunction)
    -- BlinkCmpKind<kind> -
  }
end

return M
