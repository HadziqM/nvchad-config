---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "one_light" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure


M.mappings = require "custom.mappings"

-- display
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
