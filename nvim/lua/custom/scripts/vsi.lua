-- Define a function to handle the custom vertical split and buffer arrangement
local function vsi_command()
  -- Get the list of buffers
  local buffers = vim.fn.getbufinfo({buflisted = true})
  
  -- Ensure there are at least two buffers
  if #buffers < 2 then
    print("Not enough buffers")
    return
  end
  
  -- Get the last two buffers
  local last_buffer = buffers[#buffers].bufnr
  local second_last_buffer = buffers[#buffers - 1].bufnr
  
  -- Split the window vertically
  vim.cmd('vsp')
  
  -- Switch to the left pane (original window)
  vim.cmd('wincmd h')
  
  -- Open the second last buffer in the left pane
  vim.cmd('buffer ' .. second_last_buffer)
  
  -- Switch to the right pane (newly split window)
  vim.cmd('wincmd l')
  
  -- Open the last buffer in the right pane
  vim.cmd('buffer ' .. last_buffer)
end

-- Create the `:vsi` command
vim.api.nvim_create_user_command('V', vsi_command, {})
