-- Tomorrow Night Blue - updated to match the provided image
-- Original: http://chriskempson.com
-- Conversion and update to Lua format for base46

local M = {}

M.base_30 = {
    white = "#ffffff",
    darker_black = "#001c3f",
    black = "#092451", --  nvim bg
    black2 = "#10346d", -- cursor line
    one_bg = "#003471",
    one_bg2 = "#003d81",
    one_bg3 = "#092451",
    grey = "#7285b7",
    grey_fg = "#8395c7",
    grey_fg2 = "#93a5d7",
    light_grey = "#a3b5e7",
    red = "#f79ea6",
    baby_pink = "#f79ea6",
    pink = "#f79ea6",
    line = "#00346e", -- for lines like vertsplit
    green = "#d4f1a9",
    vibrant_green = "#d4f1a9",
    nord_blue = "#419ffe",
    blue = "#bbdaff",
    yellow = "#7285b7", -- git change marks
    sun = "#fad71b",
    purple = "#e8bcff",
    dark_purple = "#d372d6",
    teal = "#99ffff",
    orange = "#ffc58f",
    cyan = "#a7fefe",
    statusline_bg = "#092451",
    lightbg = "#003471",
    pmenu_bg = "#d1f1a9",
    folder_bg = "#bbdaff",
}

M.base_16 = {
    base00 = "#092451",
    base01 = "#003f8e",
    base02 = "#00346e",
    base03 = "#7285b7",
    base04 = "#bdcfe5",
    base05 = "#ffffff",
    base06 = "#eaeaea",
    base07 = "#ffffff",
    base08 = "#f79ea6",
    base09 = "#ffc58f",
    base0A = "#ffeead",
    base0B = "#d4f1a9",
    base0C = "#f79ea6",
    base0D = "#bbdaff",
    base0E = "#e8bcff",
    base0F = "#ffc58f",
}

M.type = "dark"

M.polish_hl = {
    Normal = { fg = M.base_30.white, bg = M.base_30.black },
    LineNr = { fg = M.base_30.grey },
    Comment = { fg = M.base_30.grey },
    CursorLineNr = { fg = M.base_30.white },
    VertSplit = { fg = M.base_30.line, bg = M.base_30.line },
    Statement = { fg = M.base_30.purple },
    Keyword = { fg = M.base_30.purple },
    Include = { fg = M.base_30.purple },
    Define = { fg = M.base_30.purple },
    Special = { fg = M.base_30.sun },
}

M.polish_hl.treesitter = {
    ["@variable"] = { fg = M.base_30.red },
    ["@variable.builtin"] = { fg = M.base_30.red },
    ["@function"] = { fg = M.base_30.blue },
    ["@keyword"] = { fg = M.base_30.purple },
    ["@keyword.function"] = { fg = M.base_30.purple },
    ["@constant"] = { fg = M.base_30.red },
    ["@string"] = { fg = M.base_30.green },
    ["@number"] = { fg = M.base_30.orange },
    ["@boolean"] = { fg = M.base_30.orange },
    ["@parameter"] = { fg = M.base_30.red },
    ["@field"] = { fg = M.base_30.red },
    ["@property"] = { fg = M.base_30.red },
    ["@constructor"] = { fg = M.base_30.purple },
    ["@conditional"] = { fg = M.base_30.purple },
    ["@repeat"] = { fg = M.base_30.purple },
    ["@exception"] = { fg = M.base_30.purple },
    ["@include"] = { fg = M.base_30.purple },
    ["@anotation"] = { fg = M.base_30.white },
    ["@operator"] = { fg = M.base_30.cyan },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
    ["@punctuation.bracket"] = { fg = M.base_30.dark_purple },
    ["@tag.delimiter"] = { fg = M.base_30.red },
}

M = require("base46").override_theme(M, "tomorrow_night_blue")

return M
