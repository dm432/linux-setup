return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"kwkarlwang/bufjump.nvim",
	},

	config = function()
		require("telescope").setup({
			defaults = {
				path_display = {
					truncate = 2,
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})

		require("bufjump").setup({
			forward_key = "<C-n>",
			backward_key = "<C-m>",
			on_success = nil,
		})
	end,
}
