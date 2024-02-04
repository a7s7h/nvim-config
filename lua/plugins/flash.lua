return {
    "folke/flash.nvim",
    opts = {},
    config = function()
        local flash = require("flash")
        flash.setup({})
        vim.keymap.set("n", "<leader>fj", flash.jump, { desc = "Flash: jump" })
        vim.keymap.set("n", "<leader>ft", flash.treesitter_search, { desc = "Flash: treesitter search" })
    end,
}
