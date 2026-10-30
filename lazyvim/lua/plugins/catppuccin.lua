return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        lualine = {
          all = function(C)
            return {
              normal = {
                a = { bg = C.green, fg = C.mantle, gui = "bold" },
                b = { bg = C.surface0, fg = C.green },
              },
              insert = {
                a = { bg = C.blue, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.blue },
              },
              terminal = {
                a = { bg = C.blue, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.blue },
              },
              inactive = {
                a = { fg = C.green },
              },
            }
          end,
        },
      },
      custom_highlights = function(C)
        return {
          FloatBorder = { fg = C.green },
          BlinkCmpMenuBorder = { fg = C.green },
          Directory = { fg = C.green },
          Folded = { fg = C.green },
          CursorLineNr = { fg = C.green },
          Title = { fg = C.green, style = { "bold" } },
          MoreMsg = { fg = C.green },
          Question = { fg = C.green },
          WhichKeyGroup = { fg = C.green },
          NoiceCmdlinePopupBorder = { fg = C.green },
          NoiceConfirmBorder = { fg = C.green },
          SnacksPickerMatch = { fg = C.green },
          SnacksDashboardHeader = { fg = C.green },
          SnacksDashboardDesc = { fg = C.green },
          SnacksDashboardFile = { fg = C.green },
          NeoTreeDirectoryName = { fg = C.green },
          NeoTreeDirectoryIcon = { fg = C.green },
          NeoTreeRootName = { fg = C.green, style = { "bold" } },
        }
      end,
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin-mocha" } },
}
