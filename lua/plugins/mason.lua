require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
-- Disable because attach two same lsp server to buffer
-- require("mason-lspconfig").setup({
-- 	automatic_installation = true,
-- })
