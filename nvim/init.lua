require("options")
require("keymaps")
require("config.lazy")
require("lsp")
-- vim.cmd('source ~/.config/nvim/init.vim')

-- require("lazy").setup("plugins")
--

vim.cmd.colorscheme("tokyonight")

require("lspconfig").ltex.setup({
	settings = {
		ltex = {
			dictionary = {
				["en-US"] = { "Beancount", "Fava", "Fava-Dashboards", "Sankey", "pyenv" },
			},
		},
	},
})
