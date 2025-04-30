return {
	"rebelot/kanagawa.nvim",
	opts = {
		compile = true,
	},
	config = function(_, opts)
		require("kanagawa").setup(opts)
		vim.cmd("colorscheme kanagawa")
	end,
	build = function()
		vim.cmd("KanagawaCompile")
	end,
}
