return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
	  require("toggleterm").setup{
		  size = function(term)
			if term.direction == "horizontal" then
			  return  12
			elseif term.direction == "vertical" then
			  return vim.o.columns * 0.4
			end
		  end,
		  open_mapping = [[<c-\>]],
		  direction = "float",
		  float_opts = {
			border = "curved",
		  },
		  shading_factor = 2,
		  shade_terminal = true,
		  persist_mode = true,
	  }
	end  
}
 
