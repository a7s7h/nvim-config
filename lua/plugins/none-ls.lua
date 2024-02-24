return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = {
						"javascript",
						"json",
						"xsl",
						"xml",
						"html",
						"typescript",
						"markdown",
						"css",
					},
					extra_args = { "--no-semi" },
				}),
				null_ls.builtins.diagnostics.staticcheck,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.gofumpt,
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "NoneLS: code formatting" })
	end,
}
