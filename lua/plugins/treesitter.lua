return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "vim", "vimdoc", "query", "typescript", "javascript", "html", "python", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
