local lint = require("lint")

lint.linters_by_ft = {
    docker = { "hadolint" },
    json = { "jsonlint" },
    terraform = { "tflint" },
    markdown = { "vale" },
    text = { "vale" },
    latex = { "vale" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
