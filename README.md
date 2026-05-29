# Carvion

Carvion.nvim is a modular colorscheme for Neovim focused on clarity
consistency, and extensibility.

![Carvion.nvim colorscheme showing syntax highlighting in Neovim](./assets/preview.png)

## Requeriments

Minimum requirements:

- Neovim >= 0.9.0

## Installation

Install using your preferred plugin manager.

### vim.pack:

> [!CAUTION]
> This method is only available in Neovim >= 0.12.0

Using the built-in package manager:

```lua
  vim.pack.add({
    { src = "https://github.com/sbb2425/sbb.nvim", name = 'sbb' }
  })
```

For more details see: `:help vim.pack`

### Lazy.nvim

```lua
  { "sbb2425/sbb.nvim", lazy = false, priority = 1000, opts = {} }
```

For more details see: <https://github.com/folke/lazy.nvim>

### Packer.nvim

```lua
  use { "sbb2425/sbb.nvim", as="sbb" }
```

For more details see: <https://github.com/wbthomason/packer.nvim>

## Usage

Enabled the colorscheme:

```lua
  vim.cmd.colorscheme('sbb')
```

## Configuration

Carvion.nvim provides optional configuration using:

```lua
  require('sbb').setup({})
```

### Default configuration:

```lua
  require("sbb").setup({
    transparent = false,
    styles = {
      comments = { italic = true },
      keywords = {},
      functions = {},
      variables = {},
      strings = {},
      types = {}
    }
  })
```

### Transparent

Disable background colors.

Example:

```lua
  require('sbb').setup({
    transparent = true
  })
```

### Styles

Apply highlights styles to specific syntax group.
Each value accepts any valid highlight attribute supported by |nvim_set_hl|

Example:

```lua
  require('sbb').setup({
    styles = {
      comments = { italic = true },
      functions = { italic = true },
      keywords = { bold = true }
    }
  })
```

Available style groups `comments`, `keywords`, `functions`, `variables`,
`strings` and `types`.

# Supported Plugins

Carvion.nvim includes highlight support for selected plugins.

### Currently Supported

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [mini.pick](https://github.com/nvim-mini/mini.pick)

Plugin highlights are loaded automatically when the plugins in available.

If a plugin you use is not supported yet, you can:

- Open an issue
- Submit a pull request with highlight definitions

For more details see: <https://github.com/sbb2425/sbb.nvim>

## License

Carvion.nvim is distributed under the MIT License.
For full licence text see: `LICENSE`
