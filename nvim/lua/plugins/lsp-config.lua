return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "gopls",
        "rust-analyzer",
      },
    },
  },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   config = function()
  --     require("mason-lspconfig").setup({
  --       ensure_installed = { "lua_ls", "tsserver", "gopls", "golangci_lint_ls", "rust_analyzer" },
  --     })
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --     lspconfig.lua_ls.setup({})
  --     lspconfig.tsserver.setup({})
  --     lspconfig.gopls.setup({})
  --     lspconfig.golangci_lint_ls.setup({})
  --     lspconfig.rust_analyzer.setup({})
  --
  --     vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  --     vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  --     vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  --   end,
  -- },
}
