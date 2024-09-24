return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		configs = require("nvim-treesitter.configs")
		configs.setup({{
			ensure_installed = {"c", "lua", "java", "c_sharp", "php", "html", "javascript", "query"},
			highlight = { enable = true },
			indent = { enable = true } 
		}})

	end
}

