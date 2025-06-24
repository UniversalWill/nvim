-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
})

require("neo-tree").setup({
	source_selector = {
		winbar = true,
		sources = {
			{ source = "filesystem" },
			{ source = "buffers" },
			{ source = "git_status" },
			{ source = "document_symbols" },
		},
	},
	sources = {
		"filesystem",
		"buffers",
		"git_status",
		"document_symbols",
	},
})
