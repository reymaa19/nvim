require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set
local api = require("nvim-tree.api")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- px to rem
map("n", "<leader>pp", ":PxToRemLine<CR>", { noremap = true })

-- toggle transparency
map("n", "<leader>tt", function()
    require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- Change root directory to node
map("n", "<C-CR>", api.tree.change_root_to_node, {
    desc = "CD",
    noremap = true,
    silent = true,
    nowait = true,
})
