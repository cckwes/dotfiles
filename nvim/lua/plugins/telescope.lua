return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = "top",
      },
    },
  },
  keys = {
    {
      "<leader>ss",
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = { "Class", "Function", "Method", "Property", "Interface", "TypeAlias", "Enum", "Constant" },
        })
      end,
      desc = "Document Symbols",
    },
    {
      "<leader>sb",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find(
          require("telescope.themes").get_dropdown({ previewer = false })
        )
      end,
      desc = "Find Current Buffer",
    },
  },
}
