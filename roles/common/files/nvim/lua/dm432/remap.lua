vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set({"n", "v"}, "<leader>c", "<cmd>nohlsearch<CR>")

vim.keymap.set({"n"}, "<leader>i", "<cmd>vsplit<CR>")
vim.keymap.set({"n"}, "<leader>u", "<cmd>split<CR>")
