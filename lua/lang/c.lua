vim.lsp.enable("clangd")

vim.lsp.config("clangd", {
	cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
	init_options = {
		fallbackFlags = { "-std=c++17" },
	},
	capabilities = Capabilities,
})

Fmt.formatters_by_ft.c = { "clang-format" }
