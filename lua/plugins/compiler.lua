return {
	{
    "Zeioth/compiler.nvim",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		dependencies = { "stevearc/overseer.nvim" },
		opts = {},
		config = function()
			vim.api.nvim_set_keymap("n", "<F6>", ":CompilerOpen<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<S-F6>", ":CompilerStop<CR>" .. ":CompilerRedo<cr>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<S-F7>", ":CompilerToggleResults<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"stevearc/overseer.nvim",
		commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1,
			},
		},
	},
}
