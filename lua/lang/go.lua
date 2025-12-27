vim.lsp.enable("gopls")

vim.lsp.config("gopls", {
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.python = { "gofmt" }
