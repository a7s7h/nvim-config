return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup {
            options = {
                theme = "papercolor_light",
            },
            extensions = { "fugitive", "trouble" },
        }
    end,
}
