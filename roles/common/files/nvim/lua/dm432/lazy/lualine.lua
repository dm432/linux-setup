return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "buffers" },
				lualine_c = { "" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<M-1>", "<cmd>LualineBuffersJump! 1<CR>")
		vim.keymap.set({ "n", "v" }, "<M-2>", "<cmd>LualineBuffersJump! 2<CR>")
		vim.keymap.set({ "n", "v" }, "<M-3>", "<cmd>LualineBuffersJump! 3<CR>")
		vim.keymap.set({ "n", "v" }, "<M-4>", "<cmd>LualineBuffersJump! 4<CR>")
		vim.keymap.set({ "n", "v" }, "<M-5>", "<cmd>LualineBuffersJump! 5<CR>")
		vim.keymap.set({ "n", "v" }, "<M-6>", "<cmd>LualineBuffersJump! 6<CR>")
		vim.keymap.set({ "n", "v" }, "<M-7>", "<cmd>LualineBuffersJump! 7<CR>")
		vim.keymap.set({ "n", "v" }, "<M-8>", "<cmd>LualineBuffersJump! 8<CR>")
		vim.keymap.set({ "n", "v" }, "<M-9>", "<cmd>LualineBuffersJump! 9<CR>")
	end,
}
