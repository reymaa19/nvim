-- This file needs to have the same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "decay",
    transparency = false,
}

M.ui = {
    cmp = {
        icons = true,
        icons_left = false,
        lspkind_text = false,
        style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
        format_colors = {
            tailwind = true,
        },
    },
    statusline = {
        theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    },
    nvdash = {
        load_on_startup = true,
    },
}

return M
