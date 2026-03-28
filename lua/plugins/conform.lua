return {
    "stevearc/conform.nvim",
    config = function()
        local fmt = require("conform")

        fmt.setup({
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                python = { "ruff_format", "ruff_fix" },
                go = { "gofmt" },
                lua = { "stylua" },
                json = { "prettierd" },
                jsonc = { "prettierd" },
                yaml = { "yamlfmt" },
                kdl = { "kdlfmt" },
                cs = { "csharpier" },
                c = { "clang-format" },
                markdown = { "prettierd" },
                bash = { "shfmt" },
                sh = { "shfmt" },
            },
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                require("conform").format({ bufnr = args.buf })
            end,
        })
    end,
}
