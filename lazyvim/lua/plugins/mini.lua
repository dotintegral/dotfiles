return {
  "nvim-mini/mini.comment",
  version = false,
  config = function()
    require("mini.comment").setup({
      mappings = {
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
      },
    })
  end,
}
