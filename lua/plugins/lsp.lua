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
				"cmake",
				"templ",
				"gopls",
				"tsserver",
				"tailwindcss",
				"html",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local config = require("lspconfig")
			config.lua_ls.setup({
				settings = { Lua = { diagnostics = { globals = { "vim" } } } },
			})
			config.gopls.setup({})
			config.tsserver.setup({})
			config.html.setup({
				filetypes = { "html", "templ" },
			})
			config.tailwindcss.setup({
				filetypes = { "templ", "javascript", "typescript", "react" },
				init_options = { userLanguages = { templ = "html" } },
			})
			config.cmake.setup({})
			config.templ.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
