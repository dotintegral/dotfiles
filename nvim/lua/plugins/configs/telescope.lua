local previewers = require("telescope.previewers")
local old_highlighter = require("telescope.previewers.utils").highlighter

-- ✅ Patch Treesitter highlighter to prevent crash on unsupported languages like "text"
require("telescope.previewers.utils").highlighter = function(bufnr, ft)
  local ok = pcall(old_highlighter, bufnr, ft)
  if not ok then
    vim.bo[bufnr].syntax = ft -- fallback to basic syntax highlighting
  end
end

local options = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--fixed-strings",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = { "node_modules" },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" },
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    mappings = {
      n = {
        ["q"] = require("telescope.actions").close,
        ["<c-x>"] = require("telescope.actions").delete_buffer,
      },
      i = {
        ["<C-h>"] = "which_key",
        ["<c-x>"] = require("telescope.actions").delete_buffer,
      },
    },
  },

  extensions_list = { "themes", "terms" },
}

return options
