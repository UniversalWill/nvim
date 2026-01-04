vim.lsp.enable("angularls")

vim.lsp.config("angularls", {
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.your_file_type = { "prettierd" }
