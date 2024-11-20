local options = {
    ensure_installed = {
        "bash",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "javascript",
        "tsx",
        "typescript",
        "css",
        "scss",
        "python",
        "dockerfile",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
