Custom [Neovim](https://neovim.io/) configuration using [NvChad](https://nvchad.com/) as a base.

## Try it out with docker
```sh
docker run -w /root -it --rm alpine:latest sh -uelic '
apk update && apk add --no-cache git nodejs npm python3 neovim ripgrep build-base wget bash && \
git clone https://github.com/reymaa19/nvim.git ~/.config/nvim && \
nvim
'
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
