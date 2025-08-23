-- :: [LazyVim Single File SETUP] ::

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- add your plugins here
        {
            "rebelot/kanagawa.nvim",
            config = function() 
                vim.cmd.colorscheme("kanagawa-dragon")
            end
        },
        {
            "nvim-treesitter/nvim-treesitter",
            config = function()
                require("nvim-treesitter.configs").setup({
                    lazy = false,
                    branch = "main",
                    build = "TSUpdate",
                    ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "java", "javadoc", "php", "phpdoc", "javascript", "css", "cpp", "c_sharp"},

                    auto_install = false,

                    highlight = {
                        enable = true,
                    },

                    incremental_selection = {
                        enable = true,
                        keymaps = {
                            init_selection = "<Leader>ss", 
                            node_incremental = "<Leader>si",
                            scope_incremental = "<Leader>sc",
                            node_decremental = "<Leader>sd",
                        },
                    }
                })
            end
        }, 
        {
            "neovim/nvim-lspconfig",
        },
        {
            "mason-org/mason.nvim",
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {},
            dependencies = {
                {"mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig",
            },
            --automatic_enable = { "lua-language-server", "clangd", "java-language-server" },
            automatic_enable = true,

        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})

local function test()
    print("hfdsa")
end

test()

-- .....................................................

-- vim.cmd.colorscheme("habamax")
--vim.cmd.colorscheme("kanagawa-dragon")

