-- Display a message after 3 seconds
vim.defer_fn(function()
  print("Hello from .nvimrc.lua!")
end, 3000)  -- Delay in milliseconds
