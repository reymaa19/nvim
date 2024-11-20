local lint = require("lint")

lint.linters_by_ft = {
    dockerfile = { "hadolint" },
    json = { "jsonlint" },
    tf = { "tflint" },
    markdown = { "vale" },
    text = { "vale" },
    plaintex = { "vale" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
