return {
    "tpope/vim-fugitive",
    dependencies = {
        "lewis6991/gitsigns.nvim"
    },
    config = function ()
        require("gitsigns").setup()
        vim.keymap.set({"n", "v"}, "<leader>g", "<cmd>G<CR>")
    end
}

