-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(args)
    vim.diagnostic.disable(args.buf)
  end,
})

-- Reload buffers edited outside vim (e.g. by Claude in another tmux pane).
--
-- Plain `:checktime` (what LazyVim runs on FocusGained) only reloads buffers that
-- are displayed in a window; for a buffer that is loaded but hidden, vim defers the
-- reload until it is shown again. The LSP has already been told that file is open,
-- so until then the language server keeps type-checking the stale in-memory copy —
-- which is why the visible file updates but phantom TS errors linger, coming from
-- background buffers. Making the buffer current via nvim_buf_call forces the reload
-- to happen now. Buffers with unsaved changes are skipped, never clobbered.
local group = vim.api.nvim_create_augroup("reload_changed_buffers", { clear = true })

local function reload_changed_buffers()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buftype == "" and not vim.bo[buf].modified then
      local name = vim.api.nvim_buf_get_name(buf)
      local mtime = name ~= "" and vim.fn.getftime(name) or -1
      -- cheap stat first, so the sweep stays fast when nothing changed
      if mtime > 0 and mtime ~= vim.b[buf].reload_mtime then
        vim.b[buf].reload_mtime = mtime
        vim.api.nvim_buf_call(buf, function()
          vim.cmd("checktime " .. buf)
        end)
      end
    end
  end
end

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI", "TermLeave" }, {
  group = group,
  callback = function()
    -- reloading from cmdline mode or the cmdline window throws E11/E523
    if vim.fn.mode() == "c" or vim.fn.getcmdwintype() ~= "" then
      return
    end
    vim.schedule(reload_changed_buffers)
  end,
})
