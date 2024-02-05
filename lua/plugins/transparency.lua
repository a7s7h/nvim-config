return {
    "tribela/vim-transparent",
    config = function()
        vim.keymap.set(
            "n",
            "<leader>tb",
            ":TransparentToggle<CR>",
            { desc = "Toggle transparency", noremap = true, silent = true }
        )
    end,
}
