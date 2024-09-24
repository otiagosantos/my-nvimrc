-- VIM SET DEFAULTS ###################
vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- ####################################
-- LAZY INIT & CONFIG #################
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("typecraft.plugins", opts)


-- ####################################
--COLORSCHEME SETTING: ################
vim.cmd("colorscheme catppuccin")
--vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

-- ####################################
-- 
