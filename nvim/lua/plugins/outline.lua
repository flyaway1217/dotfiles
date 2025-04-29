return {
	"hedyhli/outline.nvim",
	event = { "VeryLazy" }, -- 提前加载，避免抢跑
	keys = {
		{ "<leader>o", "<cmd>OutlineOpen<CR>", desc = "Open Outline" },
	},
	config = function()
		-- 配置 Outline
		require("outline").setup({
			outline_window = {
				position = "left",
				width = 15,
			},
			symbol_folding = {
				autofold_depth = 2,
			},
			preview_window = {
				auto_preview = false,
			},
			keymaps = {
				toggle_preview = "p",
				fold = "h",
				unfold = "l",
				fold_toggle = "<tab>",
			},
		})

		-- ✨ 在这里加上自动打开Outline的逻辑
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local bufnr = args.buf

				-- 排除nvim-tree和Outline自己
				if vim.bo[bufnr].filetype == "NvimTree" or vim.bo[bufnr].filetype == "Outline" then
					return
				end

				-- 获取LSP client
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client and client.server_capabilities.documentSymbolProvider then
					-- 延迟打开Outline
					vim.defer_fn(function()
						vim.cmd("OutlineOpen")

						-- 延迟再切回源文件buffer
						vim.defer_fn(function()
							if vim.bo.filetype == "Outline" then
								vim.cmd("wincmd p")
							end
						end, 200)
					end, 500)
				end
			end,
		})
	end,
}
