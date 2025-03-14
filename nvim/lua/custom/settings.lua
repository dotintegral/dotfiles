vim.opt.relativenumber = true
vim.opt.scrolloff = 10

-- Enable cursor line highlighting and set color
vim.o.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#425047" })


vim.defer_fn(function()
  vim.api.nvim_set_hl(0, "@comment", { fg = "#7c7070" })
end, 500)

-- Set the color of the visual selection
vim.cmd([[
  highlight Visual ctermfg=NONE ctermbg=DarkGrey gui=NONE guifg=NONE guibg=#5c5050
]])

-- Enable loading project specific settings
vim.opt.exrc = true


