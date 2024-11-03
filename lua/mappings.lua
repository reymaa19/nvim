require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- px to rem
map("n", "<leader>pp", ":PxToRemLine<CR>", { noremap = true })

-- toggle transparency
map("n", "<leader>tt", function()
    require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })
