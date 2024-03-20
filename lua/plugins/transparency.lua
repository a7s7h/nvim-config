return {
	"tribela/vim-transparent",
	config = function()
		vim.cmd("TransparentDisable")
		vim.keymap.set(
			"n",
			"<leader>tb",
			":TransparentToggle<CR>",
			{ desc = "Transparency: toggle", noremap = true, silent = true }
		)
	end,
}
