vim.lsp.enable("systemd-language-server")

vim.lsp.config("systemd-language-server", {
	capabilities = Capabilities,
})

-- Fmt.formatters_by_ft.systemd = {  }
