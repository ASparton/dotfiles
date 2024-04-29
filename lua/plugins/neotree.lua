return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_hidden = false,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    source_selector = {
      winbar = true,
      tabs_layout = "start",
      separator = {
        left = "",
        right = "",
      },
    },
    window = {
      width = 30,
    },
    close_if_last_window = true,
  },
  config = function(PluginSpec, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle left<CR>', {})
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle current<CR>', {})
    vim.keymap.set('n', '!!', ':Neotree git_status current<CR>', {})
  end
}

