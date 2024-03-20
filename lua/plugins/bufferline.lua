return {
	"akinsho/bufferline.nvim",
	priority = 1000,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				show_close_icon = true,
				max_prefix_length = 8,
				themable = true,
				style_preset = bufferline.style_preset.no_bold,
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
				separator_style = "slant",
				always_show_bufferline = true,
			},
		})
	end,
}
