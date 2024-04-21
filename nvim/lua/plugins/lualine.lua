return {
	"nvim-lualine/lualine.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons', 'Mofiqul/vscode.nvim' },
	config = function () 
		local lualine = require('lualine')
		lualine.setup({
			options = {
				theme = 'vscode'
			}
		})
	end
}
