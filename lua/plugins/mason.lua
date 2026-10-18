return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "pyright" },
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright" },
			automatic_enable = true,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(ev)
				local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
				if client:supports_method("textDocument/completion") then
					vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
				end
			end,
		})
		-- vim.opt.ac=true
		-- vim.opt.complete:append('o')
		-- vim.opt.completeopt={'menuone','noselect'}
		-- vim.o.pumheight=10
		-- vim.o.pumborder='rounded'

		-- vim.diagnostic.config({ virtual_text = true })
	end,
}
