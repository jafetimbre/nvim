return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          -- "tsserver",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- python
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      --lspconfig.black.setup({
      --  capabilities = capabilities,
      --})

      -- js/ts setup
      -- lspconfig.tsserver.setup({})
      --
    end,
  },
}
