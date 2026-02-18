return {
  {
    "stevearc/conform.nvim",
    optional = true,
    ---@param opts ConformOpts
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.javascript = { "biome-check" }
      opts.formatters_by_ft.javascriptreact = { "biome-check" }
      opts.formatters_by_ft.typescript = { "biome-check" }
      opts.formatters_by_ft.typescriptreact = { "biome-check" }
      opts.formatters_by_ft.json = { "biome-check" }
      opts.formatters_by_ft.css = { "biome-check" }

      opts.formatters = opts.formatters or {}
      opts.formatters["biome-check"] = {
        require_cwd = true,
      }
    end,
  },
}
