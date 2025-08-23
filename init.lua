require("options")
require("plugins")

-- configure ClangD manualy, without any setup helper like nvim-lspconfig.
--   vim.api.nvim_create_autocmd("BufEnter", {
--       callback = function ()
--           vim.lsp.start({
--               name = "clangd",
--               cmd = {"/home/otiagosantos/LSPs/clangd_20.1.8/bin/clangd"},
--               root_dir = vim.fn.getcwd(),
--           })
--       end
--   })
