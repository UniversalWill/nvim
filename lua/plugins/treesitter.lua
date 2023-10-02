require'nvim-treesitter.configs'.setup {
	ensure_installed = { "python", "lua", "bash", "c", "c_sharp", "cpp", "dockerfile", "yaml", "markdown", "markdown_inline"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
