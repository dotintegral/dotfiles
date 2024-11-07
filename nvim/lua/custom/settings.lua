vim.opt.relativenumber = true
vim.opt.scrolloff = 10

-- Enable cursor line highlighting and set color
vim.o.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#425047" })

-- Enable loading project specific settings
vim.opt.exrc = true

