return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python", -- Recommended for Python
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		-- Setup dap-ui
		dapui.setup()

		-- Breakpoint Icons (Red Circle)
		vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#e06c75" })
		vim.api.nvim_set_hl(0, "DapLogPoint", { fg = "#61afef" })
		vim.api.nvim_set_hl(0, "DapStopped", { fg = "#98c379" })

		vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
		vim.fn.sign_define("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DapStopped", linehl = "Visual", numhl = "DapStopped" })

		-- Automatically open/close dap-ui
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- Python configuration (using nvim-dap-python)
		-- Use the debugpy installation from Mason
		local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(mason_path)

		-- C/C++/Rust configuration (using codelldb)
		-- Point to your mason-installed codelldb if available
		local codelldb_path = vim.fn.stdpath("data") .. "/mason/bin/codelldb"
		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = codelldb_path,
				args = { "--port", "${port}" },
			},
		}

		dap.configurations.c = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}
		dap.configurations.cpp = dap.configurations.c

		-- Basic Keymaps
		vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP Continue" })
		vim.keymap.set("n", "<F10>", dap.step_over, { desc = "DAP Step Over" })
		vim.keymap.set("n", "<F11>", dap.step_into, { desc = "DAP Step Into" })
		vim.keymap.set("n", "<F12>", dap.step_out, { desc = "DAP Step Out" })
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dB", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "DAP Breakpoint Condition" })
		vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "DAP Open REPL" })
		vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "DAP Run Last" })
		vim.keymap.set("n", "<leader>dt", dapui.toggle, { desc = "DAP UI Toggle" })
	end,
}
