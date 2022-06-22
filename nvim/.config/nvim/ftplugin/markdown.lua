vim.wo.colorcolumn = ""
vim.wo.linebreak = true
vim.wo.wrap = true
vim.wo.conceallevel = 2

vim.g.vim_markdown_math = 1
vim.g.vim_markdown_no_default_key_mappings = 1

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<Tab>", "<Plug>Markdown_Fold", opts)
keymap("n", "<C-c>", "<Plug>Markdown_Checkbox", opts)

-- Add the key mappings only for Markdown files in a zk notebook.
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
  local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
  local opts = { noremap=true, silent=false }

  -- Open the link under the caret.
  map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  -- Preview a linked note.
  map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
end
