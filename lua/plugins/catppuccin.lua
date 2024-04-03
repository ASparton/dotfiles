return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,
  },
  config = function(PluginSpec, opts)
    require("catppuccin").setup(opts)
    vim.cmd("colorscheme catppuccin-mocha")
  end
}
