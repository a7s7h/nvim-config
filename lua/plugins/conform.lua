return {
	{
		"stevearc/conform.nvim",
		config = function()
			vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "LSP: [c]ode [f]ormatting" })
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					go = { "goimports", "gofmt" },
					-- Use a sub-list to run only the first available formatter
					javascript = { { "prettierd", "prettier" } },
					-- You can use a function here to determine the formatters dynamically
					python = function(bufnr)
						if require("conform").get_formatter_info("ruff_format", bufnr).available then
							return { "ruff_format" }
						else
							return { "isort", "black" }
						end
					end,
					-- Use the "*" filetype to run formatters on all filetypes.
					["*"] = { "codespell" },
					-- Use the "_" filetype to run formatters on filetypes that don't
					-- have other formatters configured.
					["_"] = { "trim_whitespace" },
				},
				format_on_save = true,
				timout_ms = 500,
				lsp_fallback = true,
			})
		end,
	},
}
