local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- list of all servers configured.
lspconfig.servers = {
    "ts_ls",
    "cssls",
    "lua_ls",
    "eslint",
    "pylsp",
    "emmet_ls",
    "tailwindcss",
}

-- lsps with default config
local default_servers = {
    -- "ts_ls",
    "cssls",
    "lua_ls",
    "eslint",
    "pylsp",
    "emmet_ls",
    "tailwindcss",
}

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

lspconfig.ts_ls.setup({
    on_attach = function(client, bufnr)
        client.handlers["textDocument/publishDiagnostics"] = function() end
    end,
    on_init = on_init,
    capabilities = capabilities,
})
