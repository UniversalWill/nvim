require("bufferline").setup({
	options = {
		buffer_close_icon = "",
		mode = "buffers",
		-- offsets = {
		-- 	{
		-- 		filetype = "neo-tree",
		-- 		text = "Neo Tree",
		-- 		separator = true,
		-- 		-- padding = 1,
		-- 	},
		-- },
		modified_icon = "●",
		left_trunc_marker = "",
		right_trunc_marker = "",
		diagnostics = "nvim_lsp",
		indicator = {
			-- icon = "  ", -- this should be omitted if indicator style is not 'icon'
			style = "none",
		},
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		always_show_bufferline = true,
		separator_style = "thin",
	},
})
