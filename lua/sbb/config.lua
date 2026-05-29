local M = {}

---@class sbb.Config
---@field transparent boolean
---@field styles sbb.Styles
M.defaults = {
  transparent = false, -- Enable this to disable setting the background color
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = { bold = true },
    variables = {},
    strings = {},
    types = { italic = true },
  },
}

---@type sbb.Config
M.options = nil

---@param options? sbb.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param options? sbb.Config
---@return sbb.Config
function M.extend(options)
  return options and vim.tbl_deep_extend("force", {}, M.options, options) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
