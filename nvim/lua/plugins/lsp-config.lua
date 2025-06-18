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
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        update_in_insert = true,
        float = {
          spacing = 4,
          border = "rounded",
          focusable = true,
          source = "if_many",
        },
        severity_sort = true,
      },
      codelens = { enabled = true },
      setup = {
        bacon_ls = function()
          require("lspconfig").bacon_ls.setup({
            init_options = {
              useCargoBackend = true,
            },
          })
          return true
        end,
      },
    },
  },
}
