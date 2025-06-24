vim.lsp.enable("pyright")

vim.lsp.config("pyright", {
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.python = { "ruff_format", "ruff_fix" }
