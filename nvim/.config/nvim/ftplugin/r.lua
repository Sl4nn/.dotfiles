local keymap = vim.api.nvim_set_keymap

-- vim-R bindings
keymap("n", "<leader>cc", "<Plug>RClearConsole", {})
keymap("n", "<leader>ca", "<Plug>RClearAll", {})

keymap("n", "<leader>sr", "<Plug>RStart", {}) -- starts R
keymap("v", "<leader>sr", "<Plug>RStart", {}) -- starts R

keymap("n", "<leader>sf", "<Plug>RSendFile", {}) -- starts R

keymap("n", "<leader>d", "<Plug>RDSendLine", {}) -- sends line to R and moves cursor down
keymap("v", "<leader>d", "<Plug>REDSendSelection", {}) -- sends line to R and moves cursor down

keymap("n", "<leader>rq", "<Plug>RClose", {}) -- closes R without saving
keymap("n", "<leader>rwq", "<Plug>RSaveClose", {}) -- closes R with saving

keymap("n", "<leader>ro", "<Plug>RUpdateObjBrowser", {}) -- updates object browser
keymap("v", "<leader>ro", "<Plug>RUpdateObjBrowser", {}) -- updates object browser
