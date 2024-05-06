-- Set CMD-S to save
vim.api.nvim_set_keymap('n', '<M-s>', ':w<CR>', { noremap = true, silent = true })

-- Set ladder g D to use telescope
-- vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', { noremap = true, silent = true })
