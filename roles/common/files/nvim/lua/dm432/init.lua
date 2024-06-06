require("dm432.set")
require("dm432.remap")
require("dm432.lazy_init")

local augroup = vim.api.nvim_create_augroup
local dm432Group = augroup('dm432', {})

vim.api.nvim_create_autocmd('LspAttach', {
    group = dm432Group,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>lor", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>lof", function() vim.diagnostic.open_float() end, opts)
    end
})

