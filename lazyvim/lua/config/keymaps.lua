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

-- C-n to use Snacks.picker in floating window for file explorer
vim.keymap.set(
  "n",
  "<C-n>",
  '<cmd>lua Snacks.picker.explorer({ layout = { preset = "default", preview = true }})<CR>',
  { noremap = true, silent = true }
)

-- leader-fw to use Snacks.picker for grepping the project
vim.keymap.set("n", "<leader>fw", "<cmd>lua Snacks.picker.grep()<CR>", { noremap = true, silent = true })

-- leader-a to use Snacks.picker for displaying opened buffers
vim.keymap.set(
  "n",
  "<leader>a",
  '<cmd>lua Snacks.picker.buffers({ layout = { preset = "default", preview = true }})<CR>',
  { noremap = true, silent = true }
)

-- leader fg See changed files (git)
vim.keymap.set("n", "<leader>fg", "<cmd>lua Snacks.picker.git_status()<CR>", { noremap = true, silent = true })

-- navigate through errors and warnings with leader gw
vim.api.nvim_set_keymap(
  "n",
  "<leader>gw",
  "<cmd>lua vim.diagnostic.goto_next({severity = { vim.diagnostic.severity.WARN, vim.diagnostic.severity.ERROR }})<CR>",
  { noremap = true, silent = true }
)

-- navigate through errors leader ge
vim.api.nvim_set_keymap(
  "n",
  "<leader>ge",
  "<cmd>lua vim.diagnostic.goto_next({severity = { vim.diagnostic.severity.ERROR }})<CR>",
  { noremap = true, silent = true }
)
