require("nvchad.options")

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

require("nvim-tree").setup({
    filters = {
        custom = {},
        dotfiles = false,
        git_ignored = false,
    },
    view = {
        side = "right",
    },
})

vim.opt.relativenumber = true

local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- cursor
vim.o.cursorlineopt = "both"
