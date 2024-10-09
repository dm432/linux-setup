return {
    "lervag/vimtex",
    config = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_method = 'latexmk'

        vim.api.nvim_set_keymap('n', '<leader>ltc', '<cmd>VimtexCompile<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ltv', '<cmd>VimtexView<CR>', { noremap = true, silent = true })
    end,
}
