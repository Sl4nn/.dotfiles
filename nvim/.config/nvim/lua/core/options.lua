local options = {
  background = "dark",                             -- Defines background of Neovim
  backup = false,                                  -- Disables backups
  clipboard = "unnamedplus",                       -- Enables the clipboard (requires a clipboard manager)
  colorcolumn = "80",                              -- Draws a colour column at 80
  completeopt = { "menu", "menuone", "noselect" }, -- Options for insert mode completion
  cursorline = true,                               -- Highlights current line
  encoding = "utf-8",                              -- Encoding displayed
  errorbells = false,                              -- Stops Neovim from yelling at you
  expandtab = true,                                -- Substitutes tabs with spaces in insert mode
  fileencoding = "utf-8",                          -- Encoding written to files
  hidden = true,                                   -- Allows multiple open buffers
  hlsearch = true,                                 -- Highlights search results
  ignorecase = true,                               -- Case insensitive search
  incsearch = true,                                -- Enables incremental search
  linebreak = false,                               -- Deactivates linebreaks
  mouse = "nvi",                                   -- Enables the mouse
  number = true,                                   -- Enables numbers
  relativenumber = true,                           -- Enables relative numbers
  scrolloff = 12,                                  -- Allows you to scroll over the end
  shell = "/bin/zsh",                              -- Sets your shell
  shiftwidth = 2,                                  -- Number of spaces used for autoindent
  smartcase = true,                                -- Overrides ignorcase if search-pattern contains uppercase
  smartindent = true,                              -- Autoindenting for new line
  softtabstop = 2,                                 -- Number of spaces beeing inserted for a tab
  spelllang = { "en_gb", "de_20", "cjk" },         -- Spell checker
  splitbelow = true,                               -- Vertical splits are opend below current window
  splitright = true,                               -- Horizontal splits are opened right of the current window
  swapfile = false,                                -- Don't use a swap file
  syntax = "on",                                   -- Enables syntax highlighting
  tabstop = 2,                                     -- Tab counts for two spaces
  termguicolors = true,                            -- Enables term gui colours
  undofile = true,                                 -- Creates an undofile
  updatetime = 0,                                  -- Faster completion
  virtualedit = "onemore",                         -- Allows you to go over the line end by one
  wildmode = { "longest", "list", "full" },        -- Wildcard completion
  wrap = false,                                    -- Deactivates line wrap
}

-- TODO: wont work with the loop and has to be placed outside of it
vim.opt.iskeyword:append("-")                      -- Words with "-" count as one
vim.opt.shortmess:append "c"

-- For loop, setting the options from the table above
for k, v in pairs(options) do
  vim.opt[k] = v
end

