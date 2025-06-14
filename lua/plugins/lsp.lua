---@diagnostic disable: undefined-global
-- Setup language servers.
local fmt = require("conform")
local runtime_path = vim.split(package.path, ";")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

vim.lsp.enable("pyright")
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("bashls")
vim.lsp.enable("csharp_ls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("dockerls")
vim.lsp.enable("ltex")

vim.lsp.config("bashls", {
    capabilities = capabilities,
    on_attach = On_attach,
})

vim.lsp.config("clangd", {
    cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
    init_options = {
        fallbackFlags = { '-std=c++17' },
    },
	capabilities = capabilities,
	on_attach = On_attach,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	on_attach = On_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)
-- vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<Leader>sa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<Leader>sr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<Leader>sl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<Leader>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
		-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<Leader>lf", function()
			fmt.format({ async = true })
		end, opts)
	end,
})
