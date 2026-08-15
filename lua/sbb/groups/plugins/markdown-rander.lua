local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    --MarkdownRender
    RenderMarkdownH1 = { fg = c.accent.cyan.default, bg = c.ui.bg.soft }, -- иконка заголовка H1
    RenderMarkdownH2 = { fg = c.accent.green.default, bg = c.ui.bg.soft }, -- иконка заголовка H2
    RenderMarkdownH3 = { fg = c.accent.blue.default, bg = c.ui.bg.soft }, -- иконка заголовка H3
    RenderMarkdownH4 = { fg = c.accent.purple.default, bg = c.ui.bg.soft }, -- иконка заголовка H4
    RenderMarkdownH5 = { fg = c.accent.orange.default, bg = c.ui.bg.soft }, -- иконка заголовка H5
    RenderMarkdownH6 = { fg = c.accent.yellow.default, bg = c.ui.bg.soft }, -- иконка заголовка H6
    RenderMarkdownH1Bg = { fg = c.accent.cyan.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H1
    RenderMarkdownH2Bg = { fg = c.accent.green.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H2
    RenderMarkdownH3Bg = { fg = c.accent.blue.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H3
    RenderMarkdownH4Bg = { fg = c.accent.purple.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H4
    RenderMarkdownH5Bg = { fg = c.accent.orange.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H5
    RenderMarkdownH6Bg = { fg = c.accent.yellow.default, bg = c.ui.bg.soft }, -- фон всей строки заголовка H6

    RenderMarkdownCode = { bg = c.ui.bg.soft }, -- фон блока кода
    RenderMarkdownCodeInfo = { fg = c.ui.bg.light, bg = c.ui.bg.default }, -- секция инфо после языка в code fence
    RenderMarkdownCodeBorder = { fg = c.ui.bg.light, bg = c.ui.bg.default }, -- фон границы блока кода
    RenderMarkdownCodeFallback = { fg = c.ui.bg.light, bg = c.ui.bg.default }, -- фолбэк-цвет языка, если у провайдера иконок нет значения
    RenderMarkdownCodeInline = { fg = c.ui.bg.light, bg = c.ui.bg.default }, -- фон инлайн-кода
    RenderMarkdownUnchecked = { fg = c.accent.orange.default }, -- невыполненный чекбокс
    RenderMarkdownChecked = { fg = c.accent.cyan.default }, -- выполненный чекбокс
    RenderMarkdownTodo = { fg = c.accent.blue.default }, -- кастомный чекбокс "todo"
    RenderMarkdownDash = { fg = c.accent.gray.default }, -- горизонтальная линия (thematic break)
    RenderMarkdownBullet = { fg = c.accent.cyan.bright }, -- маркер элемента списка
    RenderMarkdownQuote1 = { fg = c.accent.cyan.bright }, -- маркер цитаты уровня 1
    RenderMarkdownQuote2 = { fg = c.accent.green.bright }, -- маркер цитаты уровня 2
    RenderMarkdownQuote3 = { fg = c.accent.blue.bright }, -- маркер цитаты уровня 3
    RenderMarkdownQuote4 = { fg = c.accent.purple.bright }, -- маркер цитаты уровня 4
    RenderMarkdownQuote5 = { fg = c.accent.orange.bright }, -- маркер цитаты уровня 5
    RenderMarkdownQuote6 = { fg = c.accent.yellow.bright }, -- маркер цитаты уровня 6
    RenderMarkdownTableHead = { fg = c.accent.blue.default, bg = c.ui.bg.soft }, -- строки заголовка таблицы (pipe table)
    RenderMarkdownTableRow = { fg = c.ui.fg.muted, bg = c.ui.bg.soft }, -- остальные строки таблицы
    RenderMarkdownSuccess = { fg = c.accent.green.bright, bg = c.ui.bg.soft }, -- callout'ы категории "success" (Tip, Success, Done, Check, Hint...)
    RenderMarkdownHint = { fg = c.accent.cyan.bright, bg = c.ui.bg.soft }, -- callout'ы категории "hint" (Important, Example)
    RenderMarkdownWarn = { fg = c.accent.orange.bright, bg = c.ui.bg.soft }, -- callout'ы категории "warning" (Warning, Question, Help, Faq, Attention)
    RenderMarkdownInfo = { fg = c.accent.purple.bright, bg = c.ui.bg.soft }, -- callout'ы категории "info" (Note, Abstract, Summary, Tldr, Info, Todo)
    RenderMarkdownError = { fg = c.accent.red.bright, bg = c.ui.bg.soft }, -- callout'ы категории "error" (Caution, Failure, Missing, Danger, Error, Bug)
    RenderMarkdownQuote = { fg = c.accent.purple.bright, bg = c.ui.bg.soft }, -- дефолт для блочных цитат / Quote и Cite callout'ов
    RenderMarkdownLink = { fg = c.accent.blue.default }, -- иконка ссылки
    RenderMarkdownLinkTitle = { fg = c.accent.gray.bright }, -- заголовок/подпись ссылки
    RenderMarkdownWikiLink = { fg = c.accent.yellow.default }, -- иконка WikiLink
-- RenderMarkdownInlineHighlight	содержимое инлайн-хайлайтов (==текст==)
-- RenderMarkdownSign	фон знаков в sign column
-- RenderMarkdownMath	строки LaTeX
-- RenderMarkdownIndent	иконка отступа (org-indent-mode эмуляция)
-- RenderMarkdownHtmlComment	текст внутри инлайн HTML-комментариев
  }
end

return M
