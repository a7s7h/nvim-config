return {
	"goolord/alpha-nvim",
	config = function()
		local dashboard = require("alpha.themes.startify")
		local random = math.random(3)
		if random == 1 then
			dashboard.section.header.val = {
				[[          ▀████▀▄▄              ▄█ ]],
				[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
				[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
				[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
				[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
				[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
				[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
				[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
				[[   █   █  █      ▄▄           ▄▀   ]],
			}
		elseif random == 2 then
			dashboard.section.header.val = {
				[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⡴⠒⣙⠓⠲⢦⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⣀⣀⣰⠋⣰⣿⠿⠿⢷⣦⡈⢻⡀⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⡎⢠⣦⠄⣴⣿⠇⠄⣶⣤⣤⣁⠄⣇⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⢀⡾⢀⣿⠃⢰⣿⣿⠄⠄⠙⠿⠿⣿⡧⢘⡇⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⢸⠄⣼⡏⢀⣿⣿⣿⣷⣤⣀⣀⡀⠄⢀⡼⠃⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⢿⠐⠿⠄⣼⣿⣿⣿⣿⣿⣿⣿⡿⠄⡾⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⢈⡷⠄⣴⣿⣿⠟⠿⣿⣿⣿⣿⠃⣸⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⢸⡅⠸⢿⡿⢃⡄⢠⣤⣬⡿⢃⣼⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⠄⠉⠓⠤⠴⠿⣄⠻⠿⢋⣠⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
				[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠳⠖⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
			}
		else
			dashboard.section.header.val = {
				[[     ⠀⠀     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢀⣀⣀⣀⣀⠀⠀⠀         ⠀⠀ ]],
				[[ ⠀      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀      ⠀⠀ ]],
				[[ ⠀⠀⠀⠀⠀⠀      ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣆⠀⠀      ⠀⠀ ]],
				[[  ⠀⠀⠀      ⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⠁⠀⠿⢿⣿⡿⣿⣿⡆⠀      ⠀⠀ ]],
				[[   ⠀      ⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣴⣿⠃⠀⠿⣿⡇⠀      ⠀⠀ ]],
				[[  ⠀      ⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⡿⠋⠁⣿⠟⣿⣿⢿⣧⣤⣴⣿⡇⠀      ⠀⠀ ]],
				[[ ⠀⠀   ⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠘⠁⢸⠟⢻⣿⡿⠀⠀       ⠀⠀]],
				[[ ⠀⠀  ⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣇⢀⣤⠀⠀⠀⠀⠘⣿⠃⠀⠀      ⠀⠀ ]],
				[[      ⠀⠀⠀⠀⠀⢈⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⢀⣴⣾⠇⠀⠀⠀       ⠀⠀]],
				[[ ⠀   ⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀      ⠀⠀ ]],
				[[  ⠀⠀ ⠀⠀⠀⠉⠉⠉⠉⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀      ⠀⠀ ]],
				[[     ⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
				[[ ⠀⠀  ⠀⠀⠀⣴⡾⠿⠿⠿⠛⠋⠉⠀⢸⣿⣿⣿⣿⠿⠋⢸⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
				[[     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠟⠋⠁⠀⠀⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
				[[ ⠀      ⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀⠀ ]],
			}
		end
		require("alpha").setup(dashboard.opts)
	end,
}
