return {
	"folke/trouble.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		local trouble = require("trouble")
		trouble.setup({})
		vim.keymap.set("n", "<leader>tt", ":TroubleToggle<CR>", { desc = "Trouble: toggle" })
	end,
}
