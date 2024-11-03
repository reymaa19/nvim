Custom [Neovim](https://neovim.io/) configuration using [NvChad](https://github.com/NvChad/NvChad?tab=readme-ov-file) as a base.

Mason Installs:
- lua-language-server
- css-lsp
- diagnostic-languageserver
- emmet-ls
- hadolint
- jsonlint
- html-lsp
- js-debug-adapter
- prettier
- python-lsp-server
- stylua
- typescript-language-server
- vale

prettier setup:
```
home
└───user
    │   .prettierrc.json
```
```json
{
    "printWidth": 120,
    "tabWidth": 4,
    "useTabs": true,
    "semi": true,
    "singleQuote": false,
    "bracketSpacing": true,
    "jsxBracketSameLine": true,
    "arrowParens": "always"
}
```

vale setup:
```
vale
│   .vale.ini
└───styles
    └───Microsoft
```
```
StylesPath = ./styles
MinAlertLevel = suggestion
[*]
BasedOnStyles = Vale, Microsoft
```
