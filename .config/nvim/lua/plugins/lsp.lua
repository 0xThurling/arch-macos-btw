return {
  {
    "neovim/nvim-lspconfig",
    lazy=false,
    dependencies = {
        "williamboman/mason.nvim", 
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
        automatic_installation = true,
      })
 
      -- Configure lua_ls
      require("lspconfig").lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      })

      -- Setup Lua LSP Server
      vim.api.nvim_create_autocmd({"BufEnter"}, {
        pattern = "*.lua",
        callback = function (event)
            -- Call the server to start
            vim.cmd("LspStart lua_ls")
        end
      })
    end,
  }
}
