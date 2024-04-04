return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,
    highlight_overrides = {
      all = function(colors)
        return {
          LineNr = { fg = "#ced4da" },
        }
      end,
    },
  },
  config = function(PluginSpec, opts)
    require("catppuccin").setup(opts)
    vim.cmd("colorscheme catppuccin-mocha")
  end
}
