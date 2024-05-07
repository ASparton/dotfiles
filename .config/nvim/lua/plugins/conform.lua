return {
  {
    'stevearc/conform.nvim',
    name = "conform.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          -- Conform will run multiple formatters sequentially
          python = { "ruff_format" },
          -- Use a sub-list to run only the first available formatter
          javascript = { { "prettierd", "prettier" } },

          markdown = { "mdformat" },
        },
      })
      vim.keymap.set('n', '<space>f', function()
        require("conform").format({ lsp_fallback = true })
      end, {})
    end
  },
  {
    "zapling/mason-conform.nvim",
    name = "mason-conform.nvim",
    dependencies = { "conform.nvim" },
    config = function()
      require("mason-conform").setup()
    end
  }
}
