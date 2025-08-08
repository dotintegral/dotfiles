return {
  "Saghen/blink.cmp",
  opts = function(_, opts)
    -- kill any preset that might bind <CR> to accept
    opts.keymap = opts.keymap or {}
    opts.keymap.preset = "none" -- don't inherit 'default' / 'enter' / 'super-tab'

    -- Make <CR> a plain newline (fallback to Neovim)
    opts.keymap["<CR>"] = { "fallback" } -- or a function that feeds <CR> if you prefer

    -- optional: keep your own selects/confirm on other keys
    opts.keymap["<C-y>"] = { "accept" } -- manual accept
    opts.keymap["<Tab>"] = { "select_next", "fallback" }
    opts.keymap["<S-Tab>"] = { "select_prev", "fallback" }

    -- strongly recommended: no preselect/auto-insert so enter can’t commit “ghost” items
    opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
      list = {
        selection = { preselect = false, auto_insert = false },
      },
    })
  end,
}
