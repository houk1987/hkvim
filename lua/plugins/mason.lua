return{
  "mason-org/mason-lspconfig.nvim",
  opts = {
     ensure_installed = { "lua_ls","pyright"},
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    } },
    "neovim/nvim-lspconfig",
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "pyright" },
        automatic_enable = true,
    })

    vim.o.ac=true

    -- vim.diagnostic.config({ virtual_text = true })
  end
}
