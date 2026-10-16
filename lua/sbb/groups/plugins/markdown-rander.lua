local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    --MarkdownRender
    -- иконка заголовка H1
    RenderMarkdownH1 = {
      fg = c.accent.cyan.light,
      bg = c.ui.bg.light,
    },
    -- иконка заголовка H2
    RenderMarkdownH2 = {
      fg = c.accent.green.light,
      bg = c.ui.bg.light,
    },
    -- иконка заголовка H3
    RenderMarkdownH3 = {
      fg = c.accent.blue.light,
      bg = c.ui.bg.light,
    },
    -- иконка заголовка H4
    RenderMarkdownH4 = {
      fg = c.accent.purple.light,
      bg = c.ui.bg.light,
    },
    -- иконка заголовка H5
    RenderMarkdownH5 = {
      fg = c.accent.orange.light,
      bg = c.ui.bg.light,
    },
    -- иконка заголовка H6
    RenderMarkdownH6 = {
      fg = c.accent.yellow.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H1
    RenderMarkdownH1Bg = {
      fg = c.accent.cyan.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H2
    RenderMarkdownH2Bg = {
      fg = c.accent.green.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H3
    RenderMarkdownH3Bg = {
      fg = c.accent.blue.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H4
    RenderMarkdownH4Bg = {
      fg = c.accent.purple.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H5
    RenderMarkdownH5Bg = {
      fg = c.accent.orange.light,
      bg = c.ui.bg.light,
    },
    -- фон всей строки заголовка H6
    RenderMarkdownH6Bg = {
      fg = c.accent.yellow.light,
      bg = c.ui.bg.light,
    },

    -- фон блока кода
    RenderMarkdownCode = { bg = opts.transparent and c.ui.bg.none or c.ui.bg.light },
    -- секция инфо после языка в code fence
    RenderMarkdownCodeInfo = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.default,
    },
    -- фон границы блока кода
    RenderMarkdownCodeBorder = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.default,
    },
    -- фолбэк-цвет языка, если у провайдера иконок нет значения
    RenderMarkdownCodeFallback = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.default,
    },
    -- фон инлайн-кода
    RenderMarkdownCodeInline = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.default,
    },
    -- невыполненный чекбокс
    RenderMarkdownUnchecked = { fg = c.accent.orange.default },
    -- выполненный чекбокс
    RenderMarkdownChecked = { fg = c.accent.cyan.default },
    -- кастомный чекбокс "todo"
    RenderMarkdownTodo = { fg = c.accent.blue.default },
    -- горизонтальная линия (thematic break)
    RenderMarkdownDash = { fg = c.accent.neutral.default },
    -- маркер элемента списка
    RenderMarkdownBullet = { fg = c.accent.cyan.default },
    -- маркер цитаты уровня 1
    RenderMarkdownQuote1 = { fg = c.accent.cyan.default },
    -- маркер цитаты уровня 2
    RenderMarkdownQuote2 = { fg = c.accent.green.default },
    -- маркер цитаты уровня 3
    RenderMarkdownQuote3 = { fg = c.accent.blue.default },
    -- маркер цитаты уровня 4
    RenderMarkdownQuote4 = { fg = c.accent.purple.default },
    -- маркер цитаты уровня 5
    RenderMarkdownQuote5 = { fg = c.accent.orange.default },
    -- маркер цитаты уровня 6
    RenderMarkdownQuote6 = { fg = c.accent.yellow.default },
    -- строки заголовка таблицы (pipe table)
    RenderMarkdownTableHead = {
      fg = c.accent.blue.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },

    -- остальные строки таблицы
    RenderMarkdownTableRow = {
      fg = c.ui.fg.dark,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- callout'ы категории "success" (Tip, Success, Done, Check, Hint...)
    RenderMarkdownSuccess = {
      fg = c.accent.green.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- callout'ы категории "hint" (Important, Example)
    RenderMarkdownHint = {
      fg = c.accent.cyan.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    RenderMarkdownWarn = {
      fg = c.accent.orange.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- callout'ы категории "warning" (Warning, Question, Help, Faq, Attention)
    RenderMarkdownInfo = {
      fg = c.accent.purple.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- callout'ы категории "info" (Note, Abstract, Summary, Tldr, Info, Todo)
    RenderMarkdownError = {
      fg = c.accent.red.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- callout'ы категории "error" (Caution, Failure, Missing, Danger, Error, Bug)
    RenderMarkdownQuote = {
      fg = c.accent.purple.default,
      bg = opts.transparent and c.ui.bg.none or c.ui.bg.light,
    },
    -- дефолт для блочных цитат / Quote и Cite callout'ов
    -- иконка ссылки
    RenderMarkdownLink = { fg = c.accent.blue.default },
    -- заголовок/подпись ссылки
    RenderMarkdownLinkTitle = { fg = c.accent.neutral.dark },
    -- иконка WikiLink
    RenderMarkdownWikiLink = { fg = c.accent.yellow.default },
    -- RenderMarkdownInlineHighlight	содержимое инлайн-хайлайтов (==текст==)
    -- RenderMarkdownSign	фон знаков в sign column
    -- RenderMarkdownMath	строки LaTeX
    -- RenderMarkdownIndent	иконка отступа (org-indent-mode эмуляция)
    -- RenderMarkdownHtmlComment	текст внутри инлайн HTML-комментариев
  }
end

return M
