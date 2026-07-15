local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    -- Core UI
    Normal = { fg = c.ui.fg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    NormalNC = "Normal",
    NormalSB = { fg = c.ui.fg.default, bg = c.ui.bg.default },

    Conceal = { fg = c.ui.fg.subtle },

    Cursor = { fg = c.ui.fg.inverse, bg = c.accent.cyan.default },
    lCursor = "Cursor",
    CursorIM = "Cursor",

    CursorColumn = { bg = c.ui.bg.default },
    CursorLine = "CursorColumn",
    CursorLineNr = { fg = c.accent.cyan.default, bg = c.ui.bg.default },

    ColorColumn = { bg = c.ui.cursorline },

    LineNr = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    LineNrAbove = { fg = c.accent.gray.soft, bg = c.ui.bg.default },
    LineNrBelow = { fg = c.accent.gray.soft, bg = c.ui.bg.default },

    Directory = { fg = c.accent.cyan.default },

    EndOfBuffer = { fg = c.ui.bg.default },

    NonText = { fg = c.accent.gray.dark },

    Whitespace = { fg = c.ui.fg.faint },
    SpecialKey = "Whitespace",

    Title = { fg = c.accent.cyan.default, bold = true },

    Bold = { fg = c.ui.fg.default, bold = true },
    Italic = { fg = c.ui.fg.default, italic = true },

    -- Window UI
    VertSplit = { fg = c.ui.border.default },
    WinSeparator = "VertSplit",

    StatusLine = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    StatusLineNC = { fg = c.accent.gray.bright, bg = c.ui.bg.default },

    -- Стандартные вкладки
    TabLine = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    TabLineFill = { fg = c.accent.gray.default, bg = c.ui.bg.default },
    TabLineSel = { fg = c.accent.cyan.default, bg = c.ui.bg.soft },

    Folded = { fg = c.accent.gray.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    FoldColumn = { fg = c.accent.gray.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },

    SignColumn = { fg = c.ui.bg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    SignColumnSB = { fg = c.ui.fg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },

    WinBar = { fg = c.ui.fg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    WinBarNC = { fg = c.ui.fg.muted, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },

    -- Floating UI
    NormalFloat = { fg = c.ui.fg.default, bg = c.ui.bg.soft },

    FloatBorder = { fg = c.ui.border.default, bg = c.ui.bg.soft },
    FloatTitle = { fg = c.accent.orange.default, bg = c.ui.bg.soft, bold = true },

    Pmenu = { fg = c.ui.fg.default, bg = c.ui.bg.soft },
    PmenuSel = { fg = c.ui.fg.default, bg = c.ui.bg.soft },
    PmenuMatch = { fg = c.accent.orange.default, bold = true },
    PmenuMatchSel = "PmenuMatch",
    PmenuSbar = { bg = c.ui.bg.soft },
    PmenuThumb = { bg = c.ui.bg.soft },

    -- Visual & Search
    Visual = { bg = c.ui.visual },
    VisualNOS = "Visual",

    Search = { fg = c.ui.fg.inverse, bg = c.accent.cyan.dark },
    IncSearch = { fg = c.ui.fg.inverse, bg = c.accent.cyan.dark, bold = true },
    CurSearch = "IncSearch",

    MatchParen = { fg = c.accent.cyan.dark, bold = true },

    -- -- Syntax
    -- Comment = { fg = c.syntax.comments, style = opts.styles.comments },
    -- Constant = { fg = c.syntax.constants, style = opts.styles.constants },
    -- String = { fg = c.syntax.strings, style = opts.styles.strings },
    Character = { fg = c.syntax.strings },
    Number = "Constant",
    Boolean = { fg = c.syntax.boolean , style = opts.styles.constants },
    Float = "Constant",
    Identifier = { fg = c.syntax.identifiers, style = opts.styles.variables },
    Function = { fg = c.syntax.functions, style = opts.styles.functions },
    Statement = { fg = c.syntax.keywords, style = opts.styles.keywords },
    Conditional = "Statement",
    Repeat = "Statement",
    Label = "Statement",
    Operator = { fg = c.syntax.operators, style = opts.styles.operators },
    Keyword = { fg = c.syntax.keywords, style = opts.styles.keywords },
    Exception = "Statement",
    PreProc = { fg = c.syntax.keywords, style = opts.styles.keywords  },
    Include = "PreProc",
    Define = "PreProc",
    Macro = "PreProc",
    PreCondit = "PreProc",
    Type = { fg = c.syntax.identifiers, style = opts.styles.types },
    StorangeClass = "Function",
    Structure = "StorangeClass",
    Typedef = { fg = c.syntax.functions, style = opts.styles.functions },
    Special = { fg = c.syntax.operators, style = opts.styles.operators },
    SpecialChar = "Special",
    SpecialComment = "Special",
    Tag = "Special",

    Delimiter = { fg = c.syntax.operators },
    Debug = { fg = c.accent.orange.default },
    Underlined = { underline = true },
    Ignore = { fg = c.accent.gray.default },

    -- Error = { fg = c.diagnostics.error.fg, bold = true },

    Todo = { fg = c.accent.cyan.default, bold = true },

    Added = { fg = c.git.added },
    Changed = { fg = c.git.changed },
    Removed = { fg = c.git.removed },

    -- Messages
    ErrorMsg = { fg = c.accent.red.default },
    WarningMsg = { fg = c.accent.orange.soft },

    ModeMsg = { fg = c.accent.blue.default, bold = true },
    MsgArea = { fg = c.accent.gray.default },
    MoreMsg = { fg = c.accent.cyan.default },

    Question = { fg = c.accent.blue.default },
    Substitute = { fg = c.ui.fg.inverse, bg = c.accent.orange.dark },

    -- Navigation
    QuickFixLine = { bg = c.ui.bg.default },
    WildMenu = { fg = c.ui.fg.default, bg = c.ui.bg.soft },

    -- Spell
    SpellBad = { sp = c.accent.red.default, undercurl = true },
    SpellCap = { sp = c.accent.orange.default, undercurl = true },
    SpellLocal = { sp = c.accent.blue.default, undercurl = true },
    SpellRare = { sp = c.accent.cyan.default, undercurl = true },

    -- Language Services Protocol
    LspReferenceText = { bg = c.ui.bg.soft },
    LspReferenceRead = { bg = c.ui.bg.soft },
    LspReferenceWrite = { bg = c.ui.bg.soft },

    LspSignatureActiveParameter = { bg = c.ui.bg.soft },
    LspCodeLens = { fg = c.accent.gray.default },
    LspCodeLensSeparator = { fg = c.accent.gray.default },

    LspInlayHint = { fg = c.accent.cyan.default },
    LspInfoBorder = { fg = c.ui.fg.default, bg = c.ui.bg.soft },
    ComplHint = { fg = c.accent.blue.default },

    -- Diagnostics
    DiagnosticError = { fg = c.diag.error.fg },
    DiagnosticWarn = { fg = c.diag.warn.fg },
    DiagnosticInfo = { fg = c.diag.info.fg },
    DiagnosticHint = { fg = c.diag.hint.fg },

    DiagnosticUnnecessary = { fg = c.ui.fg.subtle },

    DiagnosticVirtualTextError = { fg = c.diag.error.fg, bg = c.diag.error.bg },
    DiagnosticVirtualTextWarn = { fg = c.diag.warn.fg, bg = c.diag.warn.bg },
    DiagnosticVirtualTextInfo = { fg = c.diag.info.fg, bg = c.diag.info.bg },
    DiagnosticVirtualTextHint = { fg = c.diag.hint.fg, bg = c.diag.hint.bg },

    DiagnosticUnderlineError = { sp = c.diag.error.fg, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.diag.warn.fg, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.diag.info.fg, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.diag.hint.fg, undercurl = true },

    -- Diff
    DiffAdd = { fg = c.diff.add.fg, bg = c.diff.add.bg },
    DiffChange = { fg = c.diff.change.fg, bg = c.diff.change.bg },
    DiffDelete = { fg = c.diff.delete.fg, bg = c.diff.delete.bg },
    DiffText = { fg = c.diff.text.fg, bg = c.diff.text.bg },

    diffAdded = { fg = c.diff.add.fg },
    diffRemoved = { fg = c.diff.delete.fg },
    diffChanged = { fg = c.diff.change.fg },

    diffOldFile = { fg = c.syntax.comments },
    diffNewFile = { fg = c.diff.add.fg },
    diffFile = { fg = c.diff.change.fg },
    diffLine = { fg = c.syntax.comments },
    diffIndexLine = { fg = c.accent.neutral.base },

    -- Health
    healthError = { fg = c.diag.error.fg },
    healthSuccess = { fg = c.diag.hint.fg },
    healthWarning = { fg = c.diag.warn.fg },

    -- Quickfix & Help
    qfFileName = { fg = c.accent.blue.default },
    qfLineNr = { fg = c.accent.neutral.default },

    helpExample = { fg = c.ui.fg.muted },
    helpCommand = { fg = c.accent.orange.default },

    -- Debug
    debugBreakpoint = { fg = c.diag.info.fg },
    debugPC = { bg = c.ui.bg.option },

    -- Filestypes
    dosIniLabel = { fg = c.accent.orange.default },
    htmlH1 = { fg = c.accent.orange.default },
    htmlH2 = "htmlH1",

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

    RenderMarkdownCode = { bg = c.accent.gray.dark },
    RenderMarkdownCodeInfo = { bg = c.accent.purple.dark },
    RenderMarkdownCodeBorder = { bg = c.accent.purple.dark },
    RenderMarkdownCodeFallback = { bg = c.accent.purple.dark },
    RenderMarkdownCodeInline = { bg = c.accent.gray.dark },
    RenderMarkdownUnchecked = { fg = c.accent.orange.default },
    RenderMarkdownChecked = { fg = c.accent.cyan.default },
    RenderMarkdownTodo = { fg = c.accent.blue.default },
    RenderMarkdownDash = { fg = c.accent.gray.default },
    RenderMarkdownBullet = { fg = c.accent.cyan.default },
    RenderMarkdownQuote1 = { fg = c.accent.cyan.default },
    RenderMarkdownQuote2 = { fg = c.accent.green.default },
    RenderMarkdownQuote3 = { fg = c.accent.blue.default },
    RenderMarkdownQuote4 = { fg = c.accent.purple.default },
    RenderMarkdownQuote5 = { fg = c.accent.orange.default },
    RenderMarkdownQuote6 = { fg = c.accent.yellow.default },
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
