require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- px to rem (used for BrainStation Projects)
map("n", "<leader>pp", ":PxToRemLine<CR>", { noremap = true })

-- System clipboard paste mappings
map("n", "p", '"+p', { desc = "Paste from system clipboard" })
map("n", "P", '"+P', { desc = "Paste before from system clipboard" })

-- Use black hole register (_) to void the deleted text in visual mode
map("v", "p", '"_d"+p', { desc = "Paste from system clipboard" })
map("v", "P", '"_d"+P', { desc = "Paste before from system clipboard" })

-- toggle transparency
-- map("n", "<leader>tt", function()
--     require("base46").toggle_transparency()
-- end, { desc = "Toggle transparency" })
