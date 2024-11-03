local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local prettier = require("formatters.prettier")

-- list of all servers configured.
lspconfig.servers = {
    "html",
    "cssls",
    "emmet_ls",
    "ts_ls",
    "diagnosticls",
    "pylsp",
    "tailwindcss"
}

-- lsps with default config
local default_servers = {
    "html",
    "cssls",
    "emmet_ls",
    "ts_ls",
    "pylsp",
}

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

lspconfig.diagnosticls.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    ["javascript"] = {
        formatter = prettier,
    },

    ["typescript"] = {
        formatter = prettier,
    },

    ["tsx"] = {
        formatter = prettier,
    },

    ["javascriptreact"] = {
        formatter = prettier,
    },

    ["json"] = {
        formatter = prettier,
    },
})

lspconfig.tailwindcss.setup({})
