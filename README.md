Custom [Neovim](https://neovim.io/) configuration using [NvChad](https://nvchad.com/) as a base.

LSP:
- css-lsp
- emmet-ls
- eslint
- lua-language-server
- pylsp
- tailwindcss-language-server
- typescript-language-server

Linter:
- hadolint
- jsonlint
- tflint
- vale

Formatter:
- prettier
- stylua

prettier setup:
```json
{
    "printWidth": 120,
    "tabWidth": 4,
    "useTabs": false,
    "semi": true,
    "singleQuote": false,
    "bracketSpacing": true,
    "arrowParens": "always"
}
```

vale setup:
```
vale
│   .vale.ini
└───styles
    └───Google
```
```
StylesPath = ./styles
MinAlertLevel = suggestion
[*]
BasedOnStyles = Vale, Google
```

Commands:
```
:Lazy
:Mason
:TS
:Lsp
:Conform
:Copilot
```
