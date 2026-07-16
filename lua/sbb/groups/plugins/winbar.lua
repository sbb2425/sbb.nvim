local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {

    -- Для winbar (хлебные крошки)

    -- текущий контекст hlgroups.lua:3
    DropBarCurrentContext = { fg = c.accent.cyan.default, bg = c.ui.bg.default },
    -- при наведении курсора hlgroups.lua:5
    DropBarHove = { fg = c.accent.cyan.default, bg = c.ui.bg.light },
    -- иконки разных типов символов (функции, классы и т.д.) hlgroups.lua:6-71
    -- DropBarIconKind

    -- Для меню

    -- текущий контекст в меню hlgroups.lua:76
    DropBarMenuCurrentContex = { fg = c.ui.fg.default, bg = c.ui.bg.light },
    -- нормальный текст меню hlgroups.lua:81
    DropBarMenuNormalFloa = { fg = c.accent.gray.default, bg = c.ui.bg.soft },
    -- граница меню hlgroups.lua:77
    DropBarMenuFloatBorde = { fg = c.accent.cyan.default, bg = c.ui.bg.soft },
    -- при наведении на элемент меню hlgroups.lua:78
    DropBarMenuHoverEntr = { fg = c.accent.cyan.default, bg = c.ui.bg.light },
  }
end

return M
