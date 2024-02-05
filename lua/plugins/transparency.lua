return {
    "tribela/vim-transparent",
    config = function()
        vim.cmd("TransparentDisable")
        vim.keymap.set(
            "n",
            "<leader>tb",
            ":TransparentToggle<CR>",
            { desc = "Toggle transparency", noremap = true, silent = true }
        )
    end,
}
