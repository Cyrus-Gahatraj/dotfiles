return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
	  indent = { enable = true },
	  highlight = { enable = true },
	  auto_install = true,
	  ensure_installed = {
		  "bash",
		  "c",
		  "html",
		  "javascript",
		  "json",
		  "lua",
		  "markdown",
		  "python",
		  "rust",
	  },
	}
}
