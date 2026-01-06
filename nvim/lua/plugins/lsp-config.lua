return {
	"mason-org/mason-lspconfig.nvim",
	config = function()
		require('mason-lspconfig').setup({
			handlers = {
				function(server_name)
					vim.lsp.enable(server_name)
				end,
			}
		})
	end,
	dependencies = {
		{ "mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			}
		},
		{ "neovim/nvim-lspconfig" },
	}
}
