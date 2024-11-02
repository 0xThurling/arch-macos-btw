return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
        {"williamboman/mason.nvim", config = true},
        "williamboman/mason-lspconfig.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
    },
  },
}
