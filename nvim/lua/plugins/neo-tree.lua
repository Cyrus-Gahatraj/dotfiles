return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	  "nvim-lua/plenary.nvim",
	  "MunifTanjim/nui.nvim",
	  "nvim-tree/nvim-web-devicons", 
	},
	lazy = false, 
	config = function()
		vim.keymap.set('n', '<leader>e', '<Cmd>Neotree<CR>', {})
		require("neo-tree").setup({
			window = {
				position = "left",
				width = 25,
			},
			source_selector = {
				winbar = false,
				statusline = false,
			}
		})
	end
}
