require("options")
require("keymaps")
require("config.lazy")
require("lsp")
-- vim.cmd('source ~/.config/nvim/init.vim')

-- require("lazy").setup("plugins")
--

require("lspconfig").ltex.setup({
	settings = {
		ltex = {
			dictionary = {
				["en-US"] = { "Beancount", "Fava", "Fava-Dashboards", "Sankey", "pyenv" },
			},
		},
	},
})

local lspconfig = require("lspconfig")
lspconfig.beancount.setup({
	cmd = { "beancount-language-server" },
	filetypes = { "beancount" },
	init_options = {
		journal_file = "~/workspace/Git/Zhou-Li-Ledger/main.bean",
	},
})

vim.cmd("colorscheme catppuccin-frappe")
