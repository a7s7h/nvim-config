return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"gopls",
				"eslint",
				"html",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local config = require("lspconfig")
			config.lua_ls.setup({})
			config.gopls.setup({})
			config.eslint.setup({})
			config.html.setup({})
		end,
	},
}
