vim.lsp.enable("csharp_ls")

vim.lsp.config("csharp_ls", {
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.cs = { "csharpier" }
