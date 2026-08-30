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
    local lsp = vim.lsp
    local lspconfig = lsp.config

    lspconfig('lua_ls',{
      diagnostics = {
        globals = {"vim"}
      }
    })

    vim.diagnostic.config({ virtual_text = true })
  end
}
