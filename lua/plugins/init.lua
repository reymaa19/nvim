return {
    {
        "github/copilot.vim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            vim.cmd("Copilot")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufWritePre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = require("configs.conform"),
    },

    {
        "jsongerber/nvim-px-to-rem",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvim-px-to-rem").setup({
                root_font_size = 16,
                decimal_count = 4,
                show_virtual_text = true,
                add_cmp_source = true,
                filetypes = {
                    "css",
                    "scss",
                    "sass",
                },
            })
        end,
    },

    {
        "kylechui/nvim-surround",
        event = { "BufReadPre", "BufNewFile" },
        version = "*",
        config = function()
            require("nvim-surround").setup({})
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },
}
