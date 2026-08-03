local M = {}

---@type sbb.Highlights
function M.get(opts, c)
  return {
    --MarkdownRender
    RenderMarkdownH1 = { fg = c.accent.cyan.bright },
    RenderMarkdownH2 = { fg = c.accent.green.bright },
    RenderMarkdownH3 = { fg = c.accent.blue.bright },
    RenderMarkdownH4 = { fg = c.accent.purple.bright },
    RenderMarkdownH5 = { fg = c.accent.orange.bright },
    RenderMarkdownH6 = { fg = c.accent.yellow.bright },
    RenderMarkdownH1Bg = { fg = c.accent.cyan.bright, bg = c.ui.bg.soft },
    RenderMarkdownH2Bg = { fg = c.accent.green.bright, bg = c.ui.bg.soft },
    RenderMarkdownH3Bg = { fg = c.accent.blue.bright, bg = c.ui.bg.soft },
    RenderMarkdownH4Bg = { fg = c.accent.purple.bright, bg = c.ui.bg.soft },
    RenderMarkdownH5Bg = { fg = c.accent.orange.bright, bg = c.ui.bg.soft },
    RenderMarkdownH6Bg = { fg = c.accent.yellow.bright, bg = c.ui.bg.soft },

    RenderMarkdownCode = { bg = c.accent.bg.soft },
    RenderMarkdownCodeInfo = { fg = c.ui.bg.light, bg = c.ui.bg.default },
    RenderMarkdownCodeBorder = { fg = c.ui.bg.light, bg = c.ui.bg.default },
    RenderMarkdownCodeFallback = { fg = c.ui.bg.light, bg = c.ui.bg.default },
    RenderMarkdownCodeInline = { fg = c.ui.bg.light, bg = c.ui.bg.default },
    RenderMarkdownUnchecked = { fg = c.accent.orange.default },
    RenderMarkdownChecked = { fg = c.accent.cyan.default },
    RenderMarkdownTodo = { fg = c.accent.blue.default },
    RenderMarkdownDash = { fg = c.accent.gray.default },
    RenderMarkdownBullet = { fg = c.accent.cyan.bright },
    RenderMarkdownQuote1 = { fg = c.accent.cyan.bright },
    RenderMarkdownQuote2 = { fg = c.accent.green.bright },
    RenderMarkdownQuote3 = { fg = c.accent.blue.bright },
    RenderMarkdownQuote4 = { fg = c.accent.purple.bright },
    RenderMarkdownQuote5 = { fg = c.accent.orange.bright },
    RenderMarkdownQuote6 = { fg = c.accent.yellow.bright },
    RenderMarkdownTableHead = { fg = c.accent.blue.default, bg = c.ui.bg.soft },
    RenderMarkdownTableRow = { fg = c.ui.fg.muted, bg = c.ui.bg.soft },
    RenderMarkdownSuccess = { fg = c.accent.green.bright, bg = c.ui.bg.soft },
    RenderMarkdownHint = { fg = c.accent.cyan.bright, bg = c.ui.bg.soft },
    RenderMarkdownWarn = { fg = c.accent.orange.bright, bg = c.ui.bg.soft },
    RenderMarkdownInfo = { fg = c.accent.purple.bright, bg = c.ui.bg.soft },
    RenderMarkdownError = { fg = c.accent.red.bright, bg = c.ui.bg.soft },
    RenderMarkdownQuote = { fg = c.accent.purple.bright, bg = c.ui.bg.soft },
    RenderMarkdownLink = { fg = c.accent.blue.default },
    RenderMarkdownLinkTitle = { fg = c.accent.gray.bright },
    RenderMarkdownWikiLink = { fg = c.accent.yellow.default },
  }
end

return M
