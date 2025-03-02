return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap, dapgo, dapui = require("dap"), require("dap-go"), require("dapui")

		dapgo.setup()
		dapui.setup()

		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debugger: toggle breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debugger: continue" })
    vim.keymap.set("n", "<F5>", dap.step_into, { desc = "Debugger: step into" })
    vim.keymap.set("n", "<F6>", dap.step_over, { desc = "Debugger: step over" })
    vim.keymap.set("n", "<F7>", dap.step_out, { desc = "Debugger: step out" })
    vim.keymap.set("n", "<F9>", dap.disconnect, { desc = "Debugger: disconnect" })

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end


		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = "codelldb",
				args = { "--port", "${port}" },
			},
		}

    dap.adapters.lldb = dap.adapters.codelldb;

		dap.configurations.zig = {
			{
				name = "Launch",
				type = "codelldb",
				request = "launch",
				program = "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
			{
				name = "Attach",
				type = "codelldb",
				request = "attach",
				program = "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
		}
	end,
}
