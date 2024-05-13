-- Set CMD-S to save
-- vim.api.nvim_set_keymap('n', '<M-s>', ':lua vim.lsp.buf.format()<CR>:EslintFixAll<CR>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-s>',
  [[:lua vim.lsp.buf.format()<CR>:lua vim.defer_fn(function() vim.cmd('EslintFixAll') end, 0)<CR>:w<CR>]],
  { noremap = true, silent = true })

-- Set leader g D to use telescope
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', { noremap = true, silent = true })

-- Set leader g r to use telescope
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', { noremap = true, silent = true })

-- Set leader . to use code actions
vim.api.nvim_set_keymap('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- Set leader b to open buffers
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })



-- Remap d to delete without affecting the Vim clipboard
-- vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', 'd', '"_d', { noremap = true, silent = true })
