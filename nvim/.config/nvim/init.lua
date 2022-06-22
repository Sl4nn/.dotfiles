local core_modules = {

  -- GENERAL --
  'core.keymaps',
  'core.options',
  'core.plugins',

  -- Plugins --
  'configs.lsp',
  'configs.cmp',
  'configs.treesitter',
  'configs.autopairs',
  'configs.nvim-tree',
  'configs.zenmode',
  'configs.vimtex',
  'configs.gruvbox-material',
  'configs.lualine',
  'configs.colorizer',
  'configs.comment',
  'configs.nvim-r',
  'configs.luasnip',
  'configs.zk',
  'configs.gitsigns',
  'configs.telescope',
  'configs.toggleterm',
  'configs.whichkey',
}

-- Using pcall we can handle better any loading issues
for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading " .. module .. "\n\n" .. err)
    return
  end
end
