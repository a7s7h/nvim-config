return {
	"nvim-treesitter/nvim-treesitter",
    event = "Bufread",
	build = ":TSUpdate",
	opts = {
		highlight = { enable = true },
		incremental_selection = { enable = true },
		indent = { enable = true },
		autotag = { enable = true },
	},
}
