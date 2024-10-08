return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "Telescope: find registers" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: find files" })
			vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Telescope: quick fix" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: help tags" })
			vim.keymap.set("n", "<leader>gf", builtin.help_tags, { desc = "Telescope: git files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
		end,
	},
}
