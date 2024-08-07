--    ___ ______________ __
--   / _ /_  / __/_  / // /
--  / __ |/ /\ \  / / _  /
-- /_/ |_/_/___/ /_/_//_/
--
-- default settings
require("options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- bootstrap lazy.nvim
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- load plugins
require("lazy").setup({
	spec = { import = "plugins" },
	change_detection = {
		enable = true,
		notify = false,
		interval = 300,
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

-- colorscheme tokyonight
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon

vim.o.background = "dark"
vim.cmd.colorscheme("tokyonight-night")
