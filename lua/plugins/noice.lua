return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("notify").setup({
            background_colour = "#000000",
        })
        require("noice").setup({
            cmdline = {
               format = {
                    search_down = { icon = "󰍉 ", color = "red" },
                    search_up = { icon = "󰍉 ", color = "red" },
                },
            },
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
        })
    end,
}
