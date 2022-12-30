local M = {}


M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

M.ui ={
  transparency = true,
  theme = "catppuccin",
  theme_toggle = {"onedark","aquarium"}
}
vim.opt.bg = "dark"

if vim.g.neovide then
  vim.g.neovide_fullscreen = true
  vim.g.neovide_transparency = 0.5
  vim.g.transparency = 0.9
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_opacity = 600.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 3
  vim.g.neovide_cursor_vfx_particle_density = 20.0
  vim.g.neovide_cursor_vfx_particle_speed = 20.0
  vim.g.neovide_cursor_vfx_particle_phase = 5.0
  vim.g.neovide_cursor_vfx_particle_curl = 0.5
end

return M
