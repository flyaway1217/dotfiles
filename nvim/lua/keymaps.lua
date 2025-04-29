local keymap = vim.keymap
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)


-- 下一个tab
keymap.set("n", "<C-p>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
-- 上一个tab
keymap.set("n", "<C-o>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })

-- close the tab safely
keymap.set("n", "bd", function()
  require("bufdelete").bufdelete(0, true)
end, { desc = "Delete Buffer Safely" })

