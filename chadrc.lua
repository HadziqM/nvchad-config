local M = {}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

M.ui ={
  transparency = true,
  theme = "gruvbox",
  theme_toggle = {"onedark","aquarium"}
}
vim.opt.bg = "dark"


--snippet load

local load_override = require("core.utils").load_override
M.luasnip = function()
  local present, luasnip = pcall(require, "luasnip")

  if not present then
    return
  end

  local options = {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  }

  options = load_override(options, "L3MON4D3/LuaSnip")
  luasnip.config.set_config(options)
  vim.g.luasnippets_path = "~/.config/nvim/lua/custom/snippets/"
  require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.luasnippets_path}
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip").filetype_extend("dart", {"flutter"})

  vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
      if
        require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require("luasnip").session.jump_active
      then
        require("luasnip").unlink_current()
      end
    end,
  })
end


if vim.g.neovide then
  vim.g.neovide_fullscreen = true
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_opacity = 600.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 3
  vim.g.neovide_cursor_vfx_particle_density = 20.0
  vim.g.neovide_cursor_vfx_particle_speed = 20.0
  vim.g.neovide_cursor_vfx_particle_phase = 5.0
  vim.g.neovide_cursor_vfx_particle_curl = 0.5
end

return M
