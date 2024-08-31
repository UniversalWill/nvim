local fmt = require("conform")

fmt.setup({
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})

-- python
fmt.formatters_by_ft.python = { "ruff_format", "ruff_fix" }

--c
fmt.formatters_by_ft.c = { "clang-format" }

-- charp
fmt.formatters_by_ft.cs = { "csharpier" }

--lua
fmt.formatters_by_ft.lua = { "stylua" }

--yaml
fmt.formatters_by_ft.yaml = { "yamlfmt" }
--css, scss, less, html, json, jsonc, yaml, md, md.mdx, graphql, handlebars
