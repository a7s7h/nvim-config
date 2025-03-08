return {
	-- "goolord/alpha-nvim",
	-- config = function()
	-- 	local dashboard = require("alpha.themes.startify")
	-- 	local random = math.random(7)
	-- 	if random == 1 then
	-- 		dashboard.section.header.val = {
	-- 			[[               ⣀⣠⣤⣤⣤⣤⣀⡀        ]],
	-- 			[[           ⣠⣤⢶⣻⣿⣻⣿⣿⣿⣿⣿⣿⣦⣤⣀     ]],
	-- 			[[          ⣼⣺⢷⣻⣽⣾⣿⢿⣿⣷⣿⣿⢿⣿⣿⣿⣇    ]],
	-- 			[[        ⠠⡍⢾⣺⢽⡳⣻⡺⣽⢝⢗⢯⣻⢽⣻⣿⣿⣿⣿⢿⡄  ]],
	-- 			[[        ⡨⣖⢹⠜⢅⢫⢊⢎⠜⢌⠣⢑⠡⣹⡸⣜⣯⣿⢿⣻⣷  ]],
	-- 			[[        ⢜⢔⡹⡭⣪⢼⠽⠷⠧⣳⢘⢔⡝⠾⠽⢿⣷⣿⣟⢷⣟  ]],
	-- 			[[        ⢸⢘⢼⠿⠟⠁⠄⠄⡀⠄⠃⠑⡌⠄⠄⠈⠙⠿⣷⢽⣻  ]],
	-- 			[[        ⢌⠂⠅⠄⠄⠄⠄⠄⠄⡀⣲⣢⢂⠄⠄⠄⠄⠄⠈⣯⠏  ]],
	-- 			[[        ⠐⠨⡂⠄⠄⠄⠄⠄⡀⡔⠋⢻⣤⡀⠄⠄⢀⠄⢸⣯⠇  ]],
	-- 			[[        ⠈⣕⠝⠒⠄⠄⠒⢉⠪⠄⠄⠄⢿⠜⠑⠢⠠⡒⡺⣿⠖  ]],
	-- 			[[         ⠐⠅⠁⡀⠄⠐⢔⠁⠄⠄⠄⢀⢇⢌⠄⠄⠄⠸⠕   ]],
	-- 			[[            ⠄⠨⣔⡝⠼⡄⠂⣦⡆⣿⣲⠐⠑⠁⠄⠃   ]],
	-- 			[[              ⠃⢫⢛⣙⡊⣜⣏⡝⣝⠆       ]],
	-- 			[[              ⠈⠈⠁⠁⠁⠈⠈⠊         ]],
	-- 		}
	-- 	elseif random == 2 then
	-- 		dashboard.section.header.val = {
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⡴⠒⣙⠓⠲⢦⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⣀⣀⣰⠋⣰⣿⠿⠿⢷⣦⡈⢻⡀⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⡎⢠⣦⠄⣴⣿⠇⠄⣶⣤⣤⣁⠄⣇⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⢀⡾⢀⣿⠃⢰⣿⣿⠄⠄⠙⠿⠿⣿⡧⢘⡇⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⢸⠄⣼⡏⢀⣿⣿⣿⣷⣤⣀⣀⡀⠄⢀⡼⠃⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⢿⠐⠿⠄⣼⣿⣿⣿⣿⣿⣿⣿⡿⠄⡾⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⢈⡷⠄⣴⣿⣿⠟⠿⣿⣿⣿⣿⠃⣸⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⢸⡅⠸⢿⡿⢃⡄⢠⣤⣬⡿⢃⣼⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⠄⠉⠓⠤⠴⠿⣄⠻⠿⢋⣠⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 			[[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠳⠖⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]],
	-- 		}
	-- 	elseif random == 3 then
	-- 		dashboard.section.header.val = {
	-- 			[[     ⠀⠀     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢀⣀⣀⣀⣀⠀⠀⠀         ⠀⠀ ]],
	-- 			[[ ⠀      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀      ⠀⠀ ]],
	-- 			[[ ⠀⠀⠀⠀⠀⠀      ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣆⠀⠀      ⠀⠀ ]],
	-- 			[[  ⠀⠀⠀      ⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⠁⠀⠿⢿⣿⡿⣿⣿⡆⠀      ⠀⠀ ]],
	-- 			[[   ⠀      ⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣴⣿⠃⠀⠿⣿⡇⠀      ⠀⠀ ]],
	-- 			[[  ⠀      ⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⡿⠋⠁⣿⠟⣿⣿⢿⣧⣤⣴⣿⡇⠀      ⠀⠀ ]],
	-- 			[[ ⠀⠀   ⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠘⠁⢸⠟⢻⣿⡿⠀⠀       ⠀⠀]],
	-- 			[[ ⠀⠀  ⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣇⢀⣤⠀⠀⠀⠀⠘⣿⠃⠀⠀      ⠀⠀ ]],
	-- 			[[      ⠀⠀⠀⠀⠀⢈⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⢀⣴⣾⠇⠀⠀⠀       ⠀⠀]],
	-- 			[[ ⠀   ⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀      ⠀⠀ ]],
	-- 			[[  ⠀⠀ ⠀⠀⠀⠉⠉⠉⠉⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀      ⠀⠀ ]],
	-- 			[[     ⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
	-- 			[[ ⠀⠀  ⠀⠀⠀⣴⡾⠿⠿⠿⠛⠋⠉⠀⢸⣿⣿⣿⣿⠿⠋⢸⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
	-- 			[[     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠟⠋⠁⠀⠀⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀ ]],
	-- 			[[ ⠀      ⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⠀⠀ ]],
	-- 		}
	-- 	elseif random == 4 then
	-- 		dashboard.section.header.val = {
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⣰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⡀⠀⢀⠒⠑⣴⣦⣾⣧⣤⢀⡤⠀⠀⠀⡀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⢀⠀⢀⡘⠉⠁⣰⣾⣿⣿⣿⣿⣿⣿⣷⢀⡤⠊⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⢱⠊⡄⠒⠾⣿⣿⣿⣿⣿⣿⠿⠛⢹⣿⣯⣤⠤⠄⠀⠀]],
	-- 			[[⠀⠀⠀⠒⢦⠂⠀⣇⠀⠸⠟⢈⣿⣿⡁⠺⠗⠀⣸⣿⣿⣃⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⢘⢀⣼⠻⢷⣶⣶⣿⣿⣿⣿⣶⣶⣾⠟⣻⣿⡯⠁⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠉⠱⢾⣿⡀⠀⠈⠉⠙⠛⠛⠛⠉⠉⠀⢀⣿⣿⠿⠛⠒⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠔⢛⣿⣷⡈⠒⠀⠀⠀⠔⠁⠊⠒⢈⣾⣿⡏⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠜⠛⠿⣿⣶⣤⣀⣀⣀⣀⣤⣶⣿⠿⣿⠉⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⡸⠛⢉⡿⠻⠟⣿⢿⡟⣏⠁⠀⠘⠄⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠁⠀⠃⠘⡀⠀⠀⠀⠀⠀   ]],
	-- 		}
	-- 	elseif random == 5 then
	-- 		dashboard.section.header.val = {
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⢀⡴⣆⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⣼⣿⡗⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⣠⠟⠀⠘⠷⠶⠶⠶⠾⠉⢳⡄⠀⠀⠀⠀⠀⣧⣿⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣤⣤⣤⣤⣤⣿⢿⣄⠀⠀⠀⠀]],
	-- 			[[⠀⠀⡇⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠙⣷⡴⠶⣦]],
	-- 			[[⠀⠀⢱⡀⠀⠉⠉⠀⠀⠀⠀⠛⠃⠀⢠⡟⠂⠀⠀⢀⣀⣠⣤⠿⠞⠛⠋]],
	-- 			[[⣠⠾⠋⠙⣶⣤⣤⣤⣤⣤⣀⣠⣤⣾⣿⠴⠶⠚⠋⠉⠁⠀⠀⠀⠀⠀⠀]],
	-- 			[[⠛⠒⠛⠉⠉⠀⠀⠀⣴⠟⣣⡴⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	-- 		}
	-- 	elseif random == 6 then
	-- 		dashboard.section.header.val = {
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠁⠸⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⢸⠸⠀⡠⣄⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠃⠀⠀⢠⣞⣀⡿⠀⠀⣧⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡖⠁⠀⠀⠀⢸⠈⢈⡇⠀⢀⡏⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠩⢠⡴⠀⠀⠀⠀⠀⠈⡶⠉⠀⠀⡸⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⠀⢀⠎⢠⣇⠏⠀⠀⠀⠀⠀⠀⠀⠁⠀⢀⠄⡇⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⠀⢠⠏⠀⢸⣿⣴⠀⠀⠀⠀⠀⠀⣆⣀⢾⢟⠴⡇⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⠀⢀⣿⠀⠠⣄⠸⢹⣦⠀⠀⡄⠀⠀⢋⡟⠀⠀⠁⣇⠀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⠀⠀⢀⡾⠁⢠⠀⣿⠃⠘⢹⣦⢠⣼⠀⠀⠉⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀]],
	-- 			[[⠀⠀⢀⣴⠫⠤⣶⣿⢀⡏⠀⠀⠘⢸⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀]],
	-- 			[[⠐⠿⢿⣿⣤⣴⣿⣣⢾⡄⠀⠀⠀⠀⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀]],
	-- 			[[⠀⠀⠀⣨⣟⡍⠉⠚⠹⣇⡄⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⠀⠀⢀⡀⣾⡇⠀⠀]],
	-- 			[[⠀⠀⢠⠟⣹⣧⠃⠀⠀⢿⢻⡀⢄⠀⠀⠀⠀⠐⣦⡀⣸⣆⠀⣾⣧⣯⢻⠀⠀]],
	-- 			[[⠀⠀⠘⣰⣿⣿⡄⡆⠀⠀⠀⠳⣼⢦⡘⣄⠀⠀⡟⡷⠃⠘⢶⣿⡎⠻⣆⠀⠀]],
	-- 			[[⠀⠀⠀⡟⡿⢿⡿⠀⠀⠀⠀⠀⠙⠀⠻⢯⢷⣼⠁⠁⠀⠀⠀⠙⢿⡄⡈⢆⠀]],
	-- 			[[⠀⠀⠀⠀⡇⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠦⠀⠀⠀⠀⠀⠀⡇⢹⢿⡀]],
	-- 			[[⠀⠀⠀⠀⠁⠛⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠼⠇⠁]],
	-- 		}
	-- 	end
	-- 	require("alpha").setup(dashboard.opts)
	-- end,
}
