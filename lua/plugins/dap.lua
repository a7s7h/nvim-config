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
	end,
}
