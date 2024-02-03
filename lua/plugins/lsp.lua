return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "cmake",
                "templ",
                "eslint",
                "gopls",
                "tsserver",
                "tailwindcss",
                "html",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local config = require("lspconfig")
            config.lua_ls.setup({
                capabilties = capabilities,
                settings = { Lua = { diagnostics = { globals = { "vim" } } } },
            })
            config.gopls.setup({
                capabilties = capabilities,
            })
            config.tsserver.setup({
                capabilties = capabilities,
            })
            config.html.setup({
                capabilties = capabilities,
                filetypes = { "html", "templ" },
            })
            config.tailwindcss.setup({
                capabilties = capabilities,
                filetypes = { "templ", "javascript", "typescript", "react" },
                init_options = { userLanguages = { templ = "html" } },
            })
            config.cmake.setup({
                capabilties = capabilities,
            })
            config.templ.setup({
                capabilties = capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: hower" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP: go to definition" })
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: code action" })
        end,
    },
}
