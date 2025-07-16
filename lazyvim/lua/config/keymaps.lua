-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

function SaveAndFormat()
  vim.cmd("w")
end

-- Set CMD-S to save
vim.api.nvim_set_keymap("n", "<M-s>", "<cmd>lua SaveAndFormat()<CR>", {
  noremap = true,
  silent = true,
})

-- Set leader-. to use code actions
vim.api.nvim_set_keymap(
  "n",
  "<leader>.",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  { noremap = true, silent = true, desc = "Code Actions" }
)

-- leader C-n to use Snacks.picker in floating window
vim.keymap.set(
  "n",
  "<C-n>",
  '<cmd>lua Snacks.picker.explorer({ layout = { preset = "default", preview = true }})<CR>',
  { noremap = true, silent = true }
)
