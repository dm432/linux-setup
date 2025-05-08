vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set({"n", "v"}, "<leader>c", "<cmd>nohlsearch<CR>")

vim.keymap.set({"n", "v"}, "<leader>i", "<cmd>vsplit<CR>")
vim.keymap.set({"n", "v"}, "<leader>u", "<cmd>split<CR>")

vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz")
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

vim.keymap.set({"n"}, "<leader>d", "\"_d")
