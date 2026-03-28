vim.lsp.enable("jsonls") -- Assuming jsonls is the server name

vim.lsp.config("jsonls", {
	capabilities = Capabilities,
})
