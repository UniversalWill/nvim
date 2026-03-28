vim.lsp.enable("yamlls") -- Assuming yamlls is the server name

vim.lsp.config("yamlls", {
	capabilities = Capabilities,
})
