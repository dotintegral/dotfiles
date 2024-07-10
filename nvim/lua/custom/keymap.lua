-- local map = vim.keymap.map
-- Set CMD-S to save
-- vim.api.nvim_set_keymap('n', '<M-s>', ':lua vim.lsp.buf.format()<CR>:EslintFixAll<CR>:w<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<M-s>',
--   [[:lua vim.lsp.buf.format()<CR>:lua vim.defer_fn(function() vim.cmd('EslintFixAll') end, 0)<CR>:w<CR>]],
--   { noremap = true, silent = true })
--
vim.api.nvim_set_keymap('n', '<M-s>', ':PrettierCLI<CR>:w<CR>',
  { noremap = true, silent = true })

-- Set leader g D to use telescope
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', { noremap = true, silent = true, desc = 'Go to Definition' })

-- Set leader g r to use telescope
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', { noremap = true, silent = true, desc = 'Go to References' })

-- Set leader . to use code actions
vim.api.nvim_set_keymap('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = 'Code Actions' })

-- Set leader b to open buffers
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })

-- Remap Copilot Accept
-- 
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { noremap = true, silent = true, expr = true, desc = 'Accept Copilot' })

-- C-q in telescope sends selected files to qflist and opens qflist 
vim.api.nvim_set_keymap('n', '<C-q>', '<cmd>lua require("telescope.actions").send_to_qflist()<CR><cmd>lua require("telescope.actions").open_qflist()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-q>', '<cmd>lua require("telescope.actions").send_to_qflist()<CR><cmd>lua require("telescope.actions").open_qflist()<CR>', { noremap = true, silent = true })

-- C-Q in telescope sends all files to qflist and opens qflist 
vim.api.nvim_set_keymap('n', '<C-Q>', '<cmd>lua require("telescope.actions").send_to_qflist()<CR><cmd>lua require("telescope.actions").open_qflist()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-Q>', '<cmd>lua require("telescope.actions").send_to_qflist()<CR><cmd>lua require("telescope.actions").open_qflist()<CR>', { noremap = true, silent = true })

-- leader g y shows neoclip in telescope
vim.api.nvim_set_keymap('n', '<leader>gy', '<cmd>lua require("telescope").extensions.neoclip.default()<CR>', { noremap = true, silent = true })

--leader g e goes to next diagnostic, severity: error or warning, uses vim.diagnostic
vim.api.nvim_set_keymap('n', '<leader>ge', '<cmd>lua vim.diagnostic.goto_next({severity = { vim.diagnostic.severity.WARN, vim.diagnostic.severity.ERROR }})<CR>', { noremap = true, silent = true })

-- leader f g shows git status in telescope
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").git_status()<CR>', { noremap = true, silent = true, desc = 'Git Status' })


