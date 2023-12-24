local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find File" },
		b = { "Find Buffer" },
		h = { "Find Help" },
		w = { "Find Text" },
	},
	e = { "File Manager" },
	o = { "Git status" },
	w = { "Save" },
	t = {
		name = "Terminal",
		f = { "Float terminal" },
		h = { "Horizontal terminal" },
	},
	h = { "No highlight" },
	g = {
		name = "Git",
		b = { "Branches" },
		c = { "Commits" },
		s = { "Status" },
	},
	c = {
		name = "Comment",
		l = "Comment Line",
	},
	l = {
		name = "LSP",
		d = "Diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "Rename",
		a = "Action",
		s = "Symbol",
	},
	x = {
		name = "Trouble",
		x = "Toggle",
		w = "Workspace diagnostics",
		d = "Document diagnostics",
		q = "Quickfix",
		l = "Locklist",
	},
	v = {
		name = "Venv",
		s = "Select",
		c = "Select cached",
	},
}, { prefix = "<leader>" })

wk.register({
	g = {
		D = { "Buffer declaration" },
		i = { "Buffer implementation" },
	},
	l = {
		r = { "References" },
		d = { "Definitions" },
	},
})
