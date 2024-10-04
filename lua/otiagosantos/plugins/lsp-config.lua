return {
	{
		'williamboman/mason.nvim',
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					}
				}
			})
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'intelephense', 'ts_ls', 'csharp_ls' }
			})
		end
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')

			lspconfig.lua_ls.setup({})

			lspconfig.intelephense.setup({
				root_dir = lspconfig.util.root_pattern("composer.json", ".git", "index.php"), -- Arquivos que indicam o diretório raiz
				settings = {
					intelephense = {
						files = {
							maxSize = 5000000, -- Ajuste o tamanho máximo de arquivos se necessário
						},
					},
				},
			})

			lspconfig.ts_ls.setup({})

			lspconfig.csharp_ls.setup({})

			--vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			--vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		end
	},

}
