return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
        },
      })
      require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {}
        end,
     }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Keymaps
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
      vim.keymap.set({ 'n', 'v' }, '<space>!', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
      end, {})
    end
  }
}
