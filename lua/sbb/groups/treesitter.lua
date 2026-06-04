local M = {}

---@type sbb.HighlightsFn
function M.get(opts, c)
  return {
    ["@variable"] = { fg = c.syntax.identifiers, style = opts.styles.variables },
    ["@variable.builtin"] = { fg = c.syntax.identifiers },
    ["@variable.parameter"] = "@variable.builtin",
    ["@variable.parameter.builtin"] = { fg = c.syntax.operators },
    ["@variable.member"] = { fg = c.syntax.members },

    ["@constant"] = { fg = c.syntax.identifiers },
    ["@constant.builtin"] = { fg = c.syntax.constants },
    ["@constant.macro"] = "@constant.builtin",

    ["@module"] = { fg = c.syntax.identifiers },
    ["@module.builtin"] = "@module",
    ["@label"] = { fg = c.syntax.strings },

    ["@string"] = { fg = c.syntax.strings, style = opts.styles.strings },
    ["@string.documentation"] = { fg = c.syntax.strings },
    ["@string.regexp"] = "@string.documentation",
    ["@string.escape"] = { fg = c.syntax.operators },
    ["@string.special"] = "@string.documentation",
    ["@string.special.symbol"] = "@string.documentation",
    ["@string.special.path"] = "@string.documentation",
    ["@string.special.url"] = { fg = c.syntax.links, underline = true },

    ["@character"] = "Character",
    ["@character.special"] = { fg = c.syntax.operators },

    ["@boolean"] = "Boolean",
    ["@number"] = "Number",
    ["@number.float"] = "Float",

    ["@type"] = { fg = c.syntax.types },
    ["@type.builtin"] = { fg = c.syntax.keywords, style = opts.styles.types },
    ["@type.definition"] = { fg = c.syntax.identifiers },

    ["@attribute"] = { fg = c.syntax.functions },
    ["@attribute.builtin"] = "@attribute",
    ["@property"] = { fg = c.syntax.members },

    ["@function"] = { fg = c.syntax.functions },
    ["@function.builtin"] = "@function",
    ["@function.call"] = "@function",
    ["@function.macro"] = "@function",

    ["@function.method"] = "@function",
    ["@function.method.call"] = "@function",

    ["@constructor"] = { fg = c.syntax.operators },
    ["@operator"] = "@constructor",

    ["@keyword"] = { fg = c.syntax.keywords, style = opts.styles.keywords },
    ["@keyword.coroutine"] = "@keyword",
    ["@keyword.function"] = "@keyword",
    ["@keyword.operator"] = "@keyword",
    ["@keyword.import"] = "@keyword",
    ["@keyword.type"] = "@keyword",
    ["@keyword.modifier"] = "@keyword",
    ["@keyword.repeat"] = "@keyword",
    ["@keyword.return"] = "@keyword",
    ["@keyword.debug"] = "@keyword",
    ["@keyword.exception"] = "@keyword",

    ["@keyword.conditional"] = "@keyword",
    ["@keyword.conditional.ternary"] = "@keyword",

    ["@keyword.directive"] = "@keyword",
    ["@keyword.directive.define"] = "@keyword",

    ["@punctuation.delimiter"] = { fg = c.syntax.operators },
    ["@punctuation.bracket"] = "@punctuation.delimiter",
    ["@punctuation.special"] = "@punctuation.delimiter",

    ["@comment"] = { fg = c.syntax.comments, style = opts.styles.comments },
    ["@comment.documentation"] = "@comment",

    ["@comment.error"] = { fg = c.accent.red.default },
    ["@comment.warning"] = { fg = c.accent.orange.default },
    ["@comment.todo"] = { fg = c.accent.cyan.default },
    ["@comment.note"] = { fg = c.accent.blue.default },
    ["@comment.info"] = { fg = c.accent.purple.default },
    ["@comment.hint"] = { fg = c.accent.green.default },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.ui.fg.default, bold = true },
    ["@markup.heading.1"] = { fg = c.accent.cyan.bright },
    ["@markup.heading.2"] = { fg = c.accent.green.bright },
    ["@markup.heading.3"] = { fg = c.accent.blue.bright },
    ["@markup.heading.4"] = { fg = c.accent.purple.bright },
    ["@markup.heading.5"] = { fg = c.accent.orange.bright },
    ["@markup.heading.6"] = { fg = c.accent.yellow.bright },

    ["@markup.quote"] = { fg = c.ui.fg.muted },
    ["@markup.math"] = "Special",

    ["@markup.link"] = { fg = c.syntax.links, underline = true, sp = c.syntax.links },
    ["@markup.link.label"] = { fg = c.ui.fg.default },
    ["@markup.link.url"] = "@markup.link",

    ["@markup.raw"] = { fg = c.syntax.keywords },
    ["@markup.raw.block"] = "@markup.raw",

    ["@markup.list"] = { fg = c.syntax.operators },
    ["@markup.list.checked"] = { fg = c.accent.orange.default },
    ["@markup.list.unchecked"] = { fg = c.ui.fg.muted },

    ["@diff.plus"] = "DiffAdd",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.delta"] = "DiffChange",

    ["@tag"] = { fg = c.syntax.functions },
    ["@tag.builtin"] = "@tag",
    ["@tag.attribute"] = { fg = c.syntax.keywords },
    ["@tag.delimiter"] = { fg = c.syntax.operators },
  }
end

return M
