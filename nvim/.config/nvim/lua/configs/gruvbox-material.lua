local g = vim.g
local colorscheme = "gruvbox-material"

g.gruvbox_material_palette = "material"
g.gruvbox_material_background = 'soft'
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_enable_old_italic = 1
g.gruvbox_material_diagnostic_text_highlight = 1
g.gruvbox_material_diagnostic_line_highlight = 1
g.gruvbox_material_diagnostic_virtual_text = 'colored'

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
end
