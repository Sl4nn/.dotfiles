-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true}

-- LEADER KEY
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- NORMAL MODE --
-----------------

-- Window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Split bindings
keymap("n", "<leader>vs", "<cmd>vsplit<cr>", opts)
keymap("n", "<leader>s", "<cmd>split<cr>", opts)
keymap("n", "<C-h>", "<cmd>vertical resize -5<cr>", opts)
keymap("n", "<C-j>", "<cmd>resize +2<cr>", opts)
keymap("n", "<C-k>", "<cmd>resize -2<cr>", opts)
keymap("n", "<C-l>", "<cmd>vertical resize +5<cr>", opts)
keymap("n", "<leader>so", "<C-w>o", opts)

-----------------
-- INSERT MODE --
-----------------

-- Map Escape Key To KJ
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<Esc>", "<Esc>`^", opts) -- Fix One [Car] behind
keymap("i", "<C-s>c", "<cmd>Telescope spell_suggest<cr>", opts)

-----------------
-- VISUAL MODE --
-----------------

keymap("v", "p", '"_dP', opts) -- keeps yanked element in register after paste

-------------------
-- TERMINAL MODE --
-------------------

keymap("t", "jj", "<C-\\><C-n>", term_opts)

------------------
-- AUTOCOMMANDS --
------------------

-- Highlights yanked area
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd! TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]] ,
  false
)
