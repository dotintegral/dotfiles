-- Define the function prettier_cli
local function prettier_cli()
  -- Get the current buffer number
  local bufnr = vim.api.nvim_get_current_buf()

  -- Save the current buffer
  vim.cmd('silent! write')

  -- Get the absolute path of the current file
  local filepath = vim.api.nvim_buf_get_name(bufnr)

  -- Define the Prettier command
  local prettier_cmd = "pnpm prettier " .. filepath .. " --write"

  -- Run the Prettier command
  local result = vim.fn.system(prettier_cmd)

  -- Check if the command succeeded
  if vim.v.shell_error == 0 then
    -- Reload the buffer contents from the file
    vim.cmd('silent! edit ' .. filepath)
    vim.notify("PrettierCLI success", vim.log.levels.INFO)
  else
    vim.notify("Error: Prettier command failed.\n" .. result, vim.log.levels.ERROR)
  end
end

-- Register the function in the global namespace
_G.prettier_cli = prettier_cli

-- Create the :PrettierCLI command in Vim
vim.api.nvim_create_user_command('PrettierCLI', function() prettier_cli() end, {})
