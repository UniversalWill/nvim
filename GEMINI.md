# Neovim Configuration Overview

This is a modular Neovim configuration written in Lua, organized for clarity and ease of maintenance. It uses `lazy.nvim` as the plugin manager and follows a modern structure with core settings separated from plugin configurations and filetype-specific overrides.

## Directory Structure

- `init.lua`: The main entry point that bootstraps the configuration.
- `lua/core/`:
  - `configs.lua`: Global Vim options (numbers, indentation, clipboard, etc.) and cross-platform shell setup.
  - `mappings.lua`: Keybindings, including the leader key (`<space>`) and common navigation shortcuts.
  - `plugins.lua`: Bootstraps `lazy.nvim` and imports plugin specs.
  - `colors.lua`: Colorscheme and appearance settings.
- `lua/plugins/`: Individual plugin configurations. Each file typically returns a `lazy.nvim` spec.
- `after/ftplugin/`: Filetype-specific settings and LSP activations. This is where language-specific LSP servers are configured and enabled.

## Key Technologies & Plugins

- **Plugin Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Completion:** [blink.cmp](https://github.com/Saghen/blink.cmp) (configured with super-tab preset)
- **LSP:** `nvim-lspconfig` managed via `mason.nvim` and `mason-lspconfig.nvim`.
- **Formatting:** [conform.nvim](https://github.com/stevearc/conform.nvim)
- **File Explorer:** [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- **Fuzzy Finder:** [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **UI Enhancements:** `bufferline.nvim`, `lualine.nvim`, `dressing.nvim`, and `noice.nvim` (inferred).
- **Syntax Highlighting:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Development Conventions

### Shared Globals
To reduce boilerplate in `after/ftplugin/` files, some globals are defined in `lua/core/configs.lua`:
- `_G.Capabilities`: Pre-configured LSP capabilities from `blink.cmp`.
- `_G.Fmt`: Reference to the `conform` formatting module.

### LSP Setup
LSP servers are typically enabled in their respective `after/ftplugin/<language>.lua` files using:
```lua
vim.lsp.enable("server_name")
vim.lsp.config("server_name", {
    capabilities = Capabilities,
    -- additional settings
})
```

### Key Mappings
- **Leader Key:** `<space>`
- **Esc Shortcut:** `jj` in insert mode.
- **File Explorer:** `<leader>e` (Float)
- **Buffer Management:** `<Tab>` and `<s-Tab>` to cycle, `<leader>x` to pick-close.
- **Terminal:** `<leader>tf` (Float), `<leader>th` (Horizontal), `<leader>tv` (Vertical).
- **LSP Actions:**
  - `K`: Hover
  - `gd`: Definition (via LSP default or Telescope)
  - `<leader>la`: Code Action
  - `<leader>lr`: Rename
  - `<leader>lf`: Format (using `conform`)

## Building and Running

1. **Prerequisites:** Neovim 0.10+, a Nerd Font, and system dependencies for plugins (e.g., `ripgrep`, `fd`, `git`, `gcc`).
2. **Installation:** Clone this repository to `~/.config/nvim`.
3. **First Run:** Open Neovim; `lazy.nvim` will automatically clone itself and prompt to install plugins.
4. **Tool Management:** Use `:Mason` to install LSPs, formatters, and linters.
5. **Update Plugins:** Run `:Lazy update` within Neovim.
