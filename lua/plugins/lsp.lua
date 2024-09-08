return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"templ",
				"lua_ls",
				"cmake",
        "glsl_analyzer",
				"eslint",
				"gopls",
				"tailwindcss",
				"rust_analyzer",
				"html",
				"htmx",
        "zls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()
			require("neodev").setup()

			local capabilities =
				require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
			local config = require("lspconfig")

			config.lua_ls.setup({
				capabilities = capabilities,
				settings = { Lua = { diagnostics = { globals = { "vim" } } } },
			})

			config.gopls.setup({
				capabilities = capabilities,
			})

      config.clangd.setup({
        capabilities = capabilities,
      })

      config.glsl_analyzer.setup({
        capabilities = capabilities,
				filetypes = { "fs", "vs", "glsl", "vert", "tesc", "tese", "frag", "geom", "comp" },
      })

			config.rust_analyzer.setup({
				capabilities = capabilities,
			})

			config.tsserver.setup({
				capabilities = capabilities,
			})

      config.zls.setup({
        capabilities = capabilities,
      })

			config.html.setup({
				capabilities = capabilities,
				filetypes = { "html", "templ" },
			})

			config.htmx.setup({
				capabilities = capabilities,
				filetypes = { "html", "templ" },
			})

			config.tailwindcss.setup({
				capabilities = capabilities,
				filetypes = { "templ", "javascript", "typescript", "react", "html" },
				init_options = { userLanguages = { templ = "html" } },
			})

			config.cmake.setup({
				capabilities = capabilities,
			})

			local templ_format = function()
				if vim.bo.filetype == "templ" then
					local bufnr = vim.api.nvim_get_current_buf()
					local filename = vim.api.nvim_buf_get_name(bufnr)
					local cmd = "templ fmt " .. vim.fn.shellescape(filename)

					vim.fn.jobstart(cmd, {
						on_exit = function()
							if vim.api.nvim_get_current_buf() == bufnr then
								vim.cmd("e!")
							end
						end,
					})
				else
					vim.lsp.buf.format()
				end
			end

			config.templ.setup({
				on_attach = function(_, bufnr)
					local opts = { buffer = bufnr, remap = false, desc = "LSP: code formatting" }
					vim.keymap.set("n", "<leader>cf", templ_format, opts)
				end,
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: hower" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP: declaration" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP: definition" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP: implementation" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP: references" })
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "LSP: type definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: [c]ode [a]ction" })
		end,
	},
}
