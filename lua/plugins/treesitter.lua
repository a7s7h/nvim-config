return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	event = { "BufEnter" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			ignore_install = {},
			auto_install = false,
			ensure_installed = {
				"bash",
				"fish",
				"c",
				"css",
				"graphql",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"ocaml",
				"ocaml_interface",
				"prisma",
				"tsx",
				"rust",
				"go",
				"zig",
				"templ",
				"typescript",
				"vim",
			},
			sync_install = false,
			highlight = {
				enable = true,
				disable = { "javascript", "typescript" },
			},
			indent = {
				enable = true,
				disable = { "ocaml", "ocaml_interface" },
			},
			autopairs = {
				enable = true,
			},
			-- autotag = {
			-- enable = true,
			-- },
			incremental_selection = {
				enable = true,
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]m"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]M"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[m"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[M"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
			},
		})
	end,
}
