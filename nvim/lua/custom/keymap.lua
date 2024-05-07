-- Set CMD-S to save
vim.api.nvim_set_keymap('n', '<M-s>', ':w<CR>', { noremap = true, silent = true })

-- Set leader g D to use telescope
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', { noremap = true, silent = true })

-- Set leader g r to use telescope
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Telescope lsp_references<CR>', { noremap = true, silent = true })

-- Set leader . to use code actions
vim.api.nvim_set_keymap('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
