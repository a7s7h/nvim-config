return {
	"ThePrimeagen/harpoon",
	opts = {},
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({})

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():append()
		end, { desc = "Harpoon: add file" })
		vim.keymap.set("n", "<leader>hn", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon: navigate" })
		vim.keymap.set("n", "<leader>h1", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon: 1" })
		vim.keymap.set("n", "<leader>h2", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon: 2" })
		vim.keymap.set("n", "<leader>h3", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon: 3" })
	end,
}