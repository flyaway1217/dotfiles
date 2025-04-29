return {
	{
		"crispgm/cmp-beancount",
		ft = { "beancount" },
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("cmp").setup.filetype("bean", {
				sources = {
					{
						name = "beancount",
						option = { account = "/Users/flyaway/workspace/Git/Zhou-Li-Ledger/main.bean" },
					},
				},
			})
		end,
	},
}
