vim.lsp.enable("docker_compose_language_service")

vim.lsp.config("docker_compose_language_service", {
	capabilities = Capabilities,
})
