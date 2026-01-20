local severity = vim.diagnostic.severity

vim.diagnostic.config({
	virtual_text = {
		prefix = '●',
		spacing = 4,
	},
	virtual_line = false,
	signs = {
		text = {
			[severity.ERROR] = " ",
			[severity.WARN] = " ",
			[severity.HINT] = "󰠠 ",
			[severity.INFO] = " ",
		},
	},
	float = {border = "rounded"},
})
