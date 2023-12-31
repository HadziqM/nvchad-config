# My NVChad Config

Tailored for my use case in general purpose programing mainly using rust, and also web development using websassembly, and normal framework, also support some other language and dev environtment. The key config make use of VScode key binding for the most part.

## Configured LSP and Linting
### web dev stuff
- css-lsp
- html-lsp
- htmx-lsp
- typescript-language-server
- svelte-language-server
- astro-language-server
- vetur-vls
- tailwindcss-language-server
- deno
- prettier
- djlint

## data/content general
- json-lsp
- markdownlint
- marksman
- sqlls
- sqlfmt
- yaml-language-server
- yamlfmt
- yamllint
- taplo

### General Programing language
- python-lsp-server
- rust-analyzer
- solidity
- clangd
- clang-format
- cmake-language-server
- gopls
- goimports
- gdtoolkit

### proxy or container
- docker-compose-language-service
- dockerfile-language-server
- nginx-language-server

### arduino
- arduino-language-server

## Keybinding
The key binding are match with vscode for the most part, since i port most useful keybind into neovim usage <br>
![Keybind](/files/cheatsheet.png)
- `<S-key>` mean Shift + key
- `<M-key>` mean Alt + key
- `<C-key>` mean Ctrl + key
- `<leader>` are configured as <Space> in default
- Left,Right,Up and Down are the arrow/direction button

## Installation

### Binaries code to install
- neovim V.9.4.0 or latest, can download from snap package manager or from source ![here](https://github.com/neovim/neovim)
- Node and Npm latest (for installing LSP since most of lsp there use Node)
- fish shell (optional) ![here](https://fishshell.com/)
- neovide latest (optional) ![here](https://neovide.dev/)

After installing the binary above you can proceed to config your neovim
### Configuring Step
- clone Nvchad repositories into your neovim config directory, the instruction covered ![here](https://nvchad.com/docs/quickstart/install)
- goto the config folder and get into lua folder, example on linux are `.config/nvim/lua`
- clone this repo into folder above and rename the cloned repo into `custom`
- open neovim, Lazy plugin will install all the plugin for you, treesitter will also download all configured parsers
- you will get on LSP saying buffer close but relax, its because you dont have all the configured lsp binaries
- install all the lsp binaries using command `:MasonInstallAll`, then restart your nvim if done installing
- enjoy coding with Neovim or Neovide if using it on top of Neovim


### Troubleshoot
- if the lsp error persist even after binaries installed, check the buffer using `:LspInfo` and the log with `:LspLog`
- if the lsp buffer for target language are exist but not attached, see the log and carefully examine the error message
- if the log shown npm dependencies issue or syntax issue then its most likely its your node fault, make sure to install latest one


This can be used as an example custom config for NvChad. Do check the https://github.com/NvChad/nvcommunity
