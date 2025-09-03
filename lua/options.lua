--- \@diagnostic disable: undefined-global
-- [Line Numbers]
vim.opt.number = true
vim.opt.nuw = 1
vim.opt.relativenumber = false

-- [Split Behavior]
vim.opt.splitbelow = true
vim.opt.splitright = true

-- [Wrap]
vim.opt.wrap = true

-- [Tabs]
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 8

-- [Clipboard]
vim.opt.clipboard = "unnamedplus" -- Enable to share the system and nvim clipboards.

-- [Scrolling behave]
vim.opt.scrolloff = 999 -- keep cursos in middle of the screen.

-- [Virtual Edit]
vim.opt.virtualedit = "block" -- block | insert | all | onemore | none

-- [Inccommand-split] Preview substitute(%s)-command-like in split or not
vim.opt.inccommand = "split"

-- [ignorecase] - useful in searchs (tabs) of nvim commands.
vim.opt.ignorecase = false

-- [Use terminal colors instead neovim color schemme]
vim.opt.termguicolors = false

-- Leader Key
--- \@diagnostic disable-next-line: undefined-global
vim.g.mapleader = " "

-- Set up diagnostics
-- enable errors and warnings visible in file (virtual text).
vim.diagnostic.config({ 
    virtual_text = true,  -- show inline messages
    virtual_lines = false,
    signs = true,         -- show signs in the gutter
    underline = true,     -- underline problematic text
    update_in_insert = false, -- don't update diagnostics while typing
    severity = { min = vim.diagnostic.severity.WARN },
    severity_sort = true,     -- sort diagnostics by severity
})


-- My custom functions
function openfloat()
    vim.diagnostic.open_float()
end
