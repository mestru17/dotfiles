-- Leader
vim.g.mapleader = ","

-- Better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", ">", ">gv", {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "<S-Up>", ":move '<-2<CR>gv-gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<S-Down>", ":move '>+1<CR>gv-gv", {noremap = true, silent = true})

-- Better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-w>l", {silent = true})

