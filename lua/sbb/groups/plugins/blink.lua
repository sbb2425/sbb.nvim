local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {

    -- окно меню
    BlinkCmpMenu = {
      fg = c.accent.neutral.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },

    -- граница меню
    BlinkCmpMenuBorder = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },

    -- выбранный элемент
    BlinkCmpMenuSelection = { fg = c.ui.fg.default, bg = c.ui.bg.soft },

    -- текст элемента
    -- BlinkCmpLabel

    -- иконка типа
    -- BlinkCmpKind

    -- для конкретных типов (например, BlinkCmpKindFunction)
    -- BlinkCmpKind<kind> -
  }
end

return M
