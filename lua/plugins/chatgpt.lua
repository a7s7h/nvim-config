return {
    "jackMort/chatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("chatgpt").setup()
        vim.keymap.set("n", "<leader>cg", ":ChatGPT<CR>", { desc = "ChatGPT" })
    end,
}