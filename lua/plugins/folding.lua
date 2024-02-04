return {
    "kevinhwang91/nvim-ufo",
    event = "BufEnter",
    dependencies = {
        "kevinhwang91/promise-async",
    },
    config = function()
        local ufo = require("ufo")
        ufo.setup({
            {
                provider_selector = function(_, _, _)
                    return { "treesitter", "indent" }
                end,
            },
        })
        vim.keymap.set("n", "<leader>uo", ufo.openAllFolds, { desc = "UFO: open all folds" })
        vim.keymap.set("n", "<leader>uc", ufo.closeAllFolds, { desc = "UFO: close all folds" })
    end,
}
