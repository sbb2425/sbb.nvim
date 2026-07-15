---@class sbb.Styles
---@field comments vim.api.keyset.highlight
---@field constants vim.api.keyset.highlight
---@field functions vim.api.keyset.highlight
---@field keywords vim.api.keyset.highlight
---@field operators vim.api.keyset.highlight
---@field strings vim.api.keyset.highlight
---@field types vim.api.keyset.highlight
---@field variables vim.api.keyset.highlight
---@field booleans vim.api.keyset.highlight

---@class sbb.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias sbb.Highlights table<string,sbb.Highlight|string>

---@alias sbb.HighlightsFn fun(opts: sbb.Config, colors: sbb.ColorScheme):sbb.Highlights
