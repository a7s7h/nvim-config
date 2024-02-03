vim.g.mapleader = " "
vim.api.nvim_command "set relativenumber"
vim.api.nvim_command "set nowrap"
-- some symbols
vim.fn.sign_define('DapBreakpoint', { text = '🐞' })

-- additional filetypes
vim.filetype.add {
  extension = {
    templ = "templ",
  },
}

vim.api.nvim_create_augroup("ash_custom", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "ash_custom",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { timeout = 200 }
  end,
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- default keybindings
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

