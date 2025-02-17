return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
		})
    vim.g.dashboard_default_executive = 'telescope'
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
