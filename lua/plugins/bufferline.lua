return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			highlights = {
				fill = { bg = "#282c34" },
				buffer_selected = { bold = true },
				diagnostic_selected = { bold = true },
				info_selected = { bold = true },
				info_diagnostic_selected = { bold = true },
				warning_selected = { bold = true },
				warning_diagnostic_selected = { bold = true },
				error_selected = { bold = true },
				error_diagnostic_selected = { bold = true },
			},
			options = {
				show_close_icon = true,
				max_prefix_length = 8,
				themable = true,
				style_preset = bufferline.style_preset.minimal,
				offsets = {
					{
						filetype = "neo-tree",
						separator = true,
					},
				},
				numbers = "none",
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				separator_style = "thin",
				always_show_bufferline = true,
			},
		})
	end,
}
