local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    -- Barbar вкладки
    BufferCurrent = { fg = c.accent.cyan.default, bg = c.ui.bg.soft },
    BufferInactive = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferVisible = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferAlternate = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    -- Индексы
    BufferCurrentIndex = { fg = c.accent.gray.default, bg = c.ui.bg.soft },
    BufferInactiveIndex = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferVisibleIndex = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferAlternateIndex = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    -- Кнопки
    BufferCurrentBtn = { fg = c.accent.gray.default, bg = c.ui.bg.soft },
    BufferInactiveBtn = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferVisibleBtn = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferAlternateBtn = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    BufferCurrentModBtn = { fg = c.accent.purple.default, bg = c.ui.bg.soft },
    BufferInactiveModBtn = { fg = c.accent.purple.dark, bg = c.ui.bg.default },
    BufferCurrentMod = { fg = c.accent.purple.default, bg = c.ui.bg.soft },
    BufferInactiveMod = { fg = c.accent.purple.dark, bg = c.ui.bg.default },
    BufferVisibleMod = { fg = c.accent.purple.dark, bg = c.ui.bg.default },
    BufferAlternateMod = { fg = c.accent.purple.dark, bg = c.ui.bg.default },
    -- Git status на вкладках
    BufferCurrentADDED = { fg = c.accent.green.default, bg = c.ui.bg.soft },
    BufferCurrentCHANGED = { fg = c.accent.blue.default, bg = c.ui.bg.soft },
    BufferCurrentDELETED = { fg = c.accent.red.default, bg = c.ui.bg.soft },
    BufferInactiveADDED = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferInactiveCHANGED = { fg = c.accent.blue.dark, bg = c.ui.bg.default },
    BufferInactiveDELETED = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    BufferVisibleADDED = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferVisibleCHANGED = { fg = c.accent.blue.dark, bg = c.ui.bg.default },
    BufferVisibleDELETED = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    BufferAlternateADDED = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferAlternateCHANGED = { fg = c.accent.blue.dark, bg = c.ui.bg.default },
    BufferAlternateDELETED = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    -- Диагностика
    BufferCurrentERROR = { fg = c.accent.red.default, bg = c.ui.bg.soft },
    BufferInactiveERROR = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    BufferVisibleERROR = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    BufferAlternateERROR = { fg = c.accent.red.dark, bg = c.ui.bg.default },
    BufferCurrentHINT = { fg = c.accent.green.default, bg = c.ui.bg.soft },
    BufferInactiveHINT = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferVisibleHINT = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferAlternateHINT = { fg = c.accent.green.dark, bg = c.ui.bg.default },
    BufferCurrentWARN = { fg = c.accent.yellow.default, bg = c.ui.bg.soft },
    BufferInactiveWARN = { fg = c.accent.yellow.dark, bg = c.ui.bg.default },
    BufferVisibleWARN = { fg = c.accent.yellow.dark, bg = c.ui.bg.default },
    BufferAlternateWARN = { fg = c.accent.yellow.dark, bg = c.ui.bg.default },
    BufferCurrentINFO = { fg = c.accent.cyan.default, bg = c.ui.bg.soft },
    BufferInactiveINFO = { fg = c.accent.cyan.dark, bg = c.ui.bg.default },
    BufferVisibleINFO = { fg = c.accent.cyan.dark, bg = c.ui.bg.default },
    BufferAlternateINFO = { fg = c.accent.cyan.dark, bg = c.ui.bg.default },
    -- Разделители
    BufferCurrentSign = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
    BufferInactiveSign = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
    BufferVisibleSign = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
    BufferAlternateSign = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
    BufferCurrentSignRight = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
    BufferInactiveSignRight = { fg = c.accent.gray.dark, bg = c.ui.bg.default },
  }
end

return M
