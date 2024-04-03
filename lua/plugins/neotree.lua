return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    window = {
      width = 30,
    }
  },
  config = function(PluginSpec, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle left<CR>', {})
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle current<CR>', {})
  end
}

