-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { silent = true })
vim.keymap.set("i", "kk", "<Esc>", { silent = true })

vim.keymap.set("i", ",,", "<Esc>A,", { silent = true })
vim.keymap.set("i", ";;", "<Esc>A;", { silent = true })

vim.keymap.set("n", "<leader>bA", ":%bd<CR>", { silent = true, desc = "Close all buffers" })

vim.keymap.set("n", "<leader>sf", function()
  require("fzf-lua").blines()
end, { silent = true, desc = "Search current file" })
