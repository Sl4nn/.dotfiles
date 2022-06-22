-------------------
-- Plugin Config --
-------------------

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

  use 'wbthomason/packer.nvim' -- Have Packer manage itself
  -- LSP --
  use 'neovim/nvim-lspconfig' -- LSP configuration plugin
  use 'williamboman/nvim-lsp-installer' -- Plugin to install LSP servers

  -- Completion engine --
  use 'hrsh7th/nvim-cmp' -- CMP auto completion
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for cmp
  use 'hrsh7th/cmp-buffer' -- Buffer source for cmp
  use 'hrsh7th/cmp-path' -- Path source for cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippet source for cmp
  use 'hrsh7th/cmp-nvim-lua' -- Lua source for cmp
  use 'onsails/lspkind.nvim' -- icons for cmp

  -- Snippet engine --
  use 'L3MON4D3/LuaSnip' -- Snippet tool (required by nvim-cmp)
  use 'rafamadriz/friendly-snippets' -- some sinpets that might be usefull

  -- Utils --
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder & more
  use 'akinsho/toggleterm.nvim' -- Terminal for Neovim
  use 'folke/which-key.nvim' -- tool for managing and displaying key bindings
  use 'nvim-lua/plenary.nvim' -- Library of functions for Neovim
  use 'numToStr/Comment.nvim' -- Commenting tool
  use 'norcalli/nvim-colorizer.lua' -- Displays colour strings
  use 'kyazdani42/nvim-tree.lua' -- File explorer
  use 'ur4ltz/surround.nvim' -- Surround selection with anything

  -- Apperance --
  use 'sainnhe/gruvbox-material' -- Colour scheme
  use 'hoob3rt/lualine.nvim' -- Other status line
  use 'kyazdani42/nvim-web-devicons' -- Icon suport for some plugins

  -- Writing --
  use 'folke/zen-mode.nvim' -- Distraction free writing
  use { 'lervag/vimtex', ft = "tex" } -- Tools for writing LaTeX documents
  use 'mickael-menu/zk-nvim' -- Integration of ZK into Neovim
  use { 'ixru/nvim-markdown', ft = "markdown" } -- Writing markdown
  use { "ellisonleao/glow.nvim", branch = 'main' } -- Markdown preview

  -- Coding --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Treesitter
  use 'p00f/nvim-ts-rainbow' -- Rainbow delimiters
  use 'windwp/nvim-autopairs' -- Autopairs plugin
  use { 'jalvesaq/Nvim-R', ft = { 'r' } } -- Using R in Neovim
  use 'lewis6991/gitsigns.nvim' -- Show Git diff in sign column

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
