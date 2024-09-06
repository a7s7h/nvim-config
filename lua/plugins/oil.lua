return {
	{
		"echasnovski/mini.icons",
		config = function()
			require("mini.icons").setup({
				directory = {
					["meshes"] = { hl = "MiniIconsGreen" },
					["shaders"] = { hl = "MiniIconsYellow" },
				},
				extension = {
					["frag"] = { glyph = "", hl = "MiniIconsRed" },
					["fs"] = { glyph = "", hl = "MiniIconsRed" },
					["vert"] = { glyph = "󱗘", hl = "MiniIconsBlue" },
					["vs"] = { glyph = "󱗘", hl = "MiniIconsBlue" },
				},
			})
		end,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = {
			"echasnovski/mini.icons",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("oil").setup({
				default_file_explorer = true,
			})
			vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Oil" })
		end,
	},
}
