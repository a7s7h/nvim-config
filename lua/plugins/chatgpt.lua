return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		local defaults = {
			chat = {
				question_sign = "", -- 🙂
				answer_sign = "ﮧ", -- 🤖
				border_left_sign = "",
				border_right_sign = "",
				max_line_length = 120,
				sessions_window = {
					active_sign = "  ",
					inactive_sign = "  ",
					current_line_sign = "",
				},
				keymaps = {
					close = "<C-c>",
					yank_last = "<C-y>",
					yank_last_code = "<C-k>",
					scroll_up = "<C-u>",
					scroll_down = "<C-d>",
					new_session = "<C-n>",
					cycle_windows = "<C-t>",
					cycle_modes = "<C-f>",
					next_message = "<C-j>",
					prev_message = "<C-k>",
					select_session = "<Space>",
					rename_session = "r",
					delete_session = "d",
					draft_message = "<C-r>",
					edit_message = "e",
					delete_message = "d",
					toggle_settings = "<C-o>",
					toggle_sessions = "<C-p>",
					toggle_help = "<C-h>",
					toggle_message_role = "<C-r>",
					toggle_system_role_open = "<C-s>",
					stop_generating = "<C-x>",
				},
			},
		}
		require("chatgpt").setup(defaults)
		vim.keymap.set("n", "<leader>cg", ":ChatGPT<CR>", { desc = "ChatGPT" })
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
