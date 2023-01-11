## Custom config file for Neovim

this config intended for someone who migrate from vscode like me

### Supported language yet

- Typescript
- Svelte
- Golang
- Rust
- Dart & Flutter

### Side Notes

For dart need to edit `~/.config/nvim/lua/plugins/configs/others.lua`
```lua
  vim.g.luasnippets_path = "~/.config/nvim/lua/custom/snippets/"
  require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.luasnippets_path}
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip").filetype_extend("dart", {"flutter"})
```
on `M.luasnip` section

