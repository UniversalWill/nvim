require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	completion = {
		-- menu = {
		-- 	auto_show = false,
		-- },
		ghost_text = {
			enabled = true,
		},
	},

	appearance = {
		nerd_font_variant = "mono",
	},

	sources = {
		-- Твой список источников
		default = { "lsp", "path", "snippets", "buffer" },

		-- providers = {
		-- 	minuet = {
		-- 		name = "minuet",
		-- 		module = "minuet.blink",
		-- 		async = true,
		-- 		timeout_ms = 300,
		-- 		score_offset = 50,
		-- 	},
		-- 	copilot = {
		-- 		name = "copilot",
		-- 		module = "blink-copilot",
		-- 		timeout_ms = 300,
		-- 		score_offset = 50,
		-- 		async = true,
		-- 	},
		-- },
	},

	fuzzy = { implementation = "prefer_rust_with_warning" },
})
