--    ___ ______________ __
--   / _ /_  / __/_  / // /
--  / __ |/ /\ \  / / _  /
-- /_/ |_/_/___/ /_/_//_/
--
-- default settings
require("options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- bootstrap lazy.nvim
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- load plugins
require("lazy").setup({
  spec = { import = "plugins" },
  change_detection = {
    enable = true,
    notify = false,
    interval = 300,
  },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- colorscheme tokyonight
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon

vim.o.background = "dark"
vim.cmd.colorscheme("tokyonight-night")

vim.lsp.config["luals"] = {
  -- Command and arguments to start the server.
  cmd = { "lua-language-server" },
  -- Filetypes to automatically attach to.
  filetypes = { "lua" },
  -- Sets the "root directory" to the parent directory of the file in the
  -- current buffer that contains either a ".luarc.json" or a
  -- ".luarc.jsonc" file. Files that share a root directory will reuse
  -- the connection to the same LSP server.
  root_markers = { ".luarc.json", ".luarc.jsonc" },
  -- Specific settings to send to the server. The schema for this is
  -- defined by the server. For example the schema for lua-language-server
  -- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      runtime = {
        version = "LuaJIT",
      },
    },
  },
}

vim.lsp.config["clangd"] = {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = { ".clandg", ".clang-tidy", ".clang-format", ".git", "compile_flags.txt" },
  settings = {},
}

vim.lsp.config["zls"] = {
  cmd = { "zls" },
  filetypes = { "zig" },
  root_markers = { "build.zig", "build.zig.zon" },
  single_file_support = true,
  settings = {},
}

vim.lsp.config["rust-analyzer"] = {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml" },
  settings = {},
}

-- npm install -g typescript typescript-language-server
vim.lsp.config["tsserver"] = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "typescript" },
  settings = {},
  root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
}

-- npm i -g vscode-langservers-extracted
vim.lsp.config["html"] = {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html", "css", "javascript" },
  settings = {},
  root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
}

-- npm install -g @tailwindcss/language-server
vim.lsp.config["tailwindcss"] = {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "javascript" },
  settings = {},
  root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
}

vim.lsp.config["gopls"] = {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = { "go.mod", ".git" },
  settings = {
    gopls = {
      usePlaceholders = true,
      completeUnimported = true,
      staticcheck = true,
    },
  },
}

vim.lsp.enable("luals")
vim.lsp.enable("clangd")
vim.lsp.enable("zls")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("tsserver")
vim.lsp.enable("html")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("gopls")

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if not client then
--       return
--     end
--     if client:supports_method("textDocument/formatting", args.buf) then
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         buffer = args.buf,
--         callback = function()
--           vim.lsp.buf.format({ bufnr = args.buf, id = client.id, async = false })
--         end,
--       })
--     end
--   end,
-- })
