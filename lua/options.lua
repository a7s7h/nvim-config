vim.g.mapleader = " "
vim.api.nvim_command("set relativenumber")
vim.api.nvim_command("set nowrap")
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
-- folding
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
-- disable intro
vim.opt.shortmess:append("sI")
-- open splitter right and below
vim.opt.splitbelow = true
vim.opt.splitright = true
-- tab options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- use mouse
vim.opt.mouse = "a"
vim.opt.virtualedit = "block"
vim.opt.inccommand = "nosplit"
-- search options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 50
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.undofile = true
-- disable built-in providers
for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
	vim.g["loaded_" .. provider .. "_provider"] = 0
end
-- redefine symbols
vim.fn.sign_define("DapBreakpoint", { text = "🐞" })
-- register templ filetype
vim.filetype.add({
	extension = {
		templ = "templ",
	},
})
-- animate yank highlight
vim.api.nvim_create_augroup("ash_custom", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "ash_custom",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 200 })
	end,
})

-- various keymaps
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up centered" })
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
vim.keymap.set("n", "<C-o>", ":Telescope<cr>", { desc = "Telescope: open" })
vim.keymap.set("n", "<leader>bx", ":BufferLineCloseOthers<cr>", { desc = "BufferLine: close others" })
vim.keymap.set("n", "q", ":BufferLinePickClose<cr>", { desc = "BufferLine: pick and close" })
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<cr>", { desc = "BufferLine: pick" })
vim.keymap.set("n", "<Esc>", ":noh<CR>", { desc = "Clear highlights" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<C-c>", ":%y+<CR>", { desc = "Copy whole file" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
