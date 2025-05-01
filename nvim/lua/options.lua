vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
-- Hint: use `:h <option>` to figure out the meaning if needed
opt.completeopt = { "menu", "menuone", "noselect" }
opt.mouse = "a" -- allow the mouse to be used in Nvim
opt.clipboard = "unnamedplus"

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spacesin tab when editing
opt.shiftwidth = 4 -- insert 4 spaces on a tab
opt.expandtab = true -- tabs are spaces, mainly because of python
opt.autoindent = true
opt.signcolumn = "yes"

-- UI config
opt.termguicolors = true
opt.number = true -- show absolute number
opt.relativenumber = true -- add numbers to each line on the left side
opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
opt.cursorcolumn = true
opt.splitright = true -- open new horizontal splits right
opt.splitbelow = true -- open new vertical split bottom
opt.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint
opt.termguicolors = true
opt.background = "dark"

-- Searching
opt.incsearch = true -- search as characters are entered
opt.hlsearch = false -- do not highlight matches
opt.ignorecase = true -- ignore case in searches by default
opt.smartcase = true -- but make it case sensitive if an uppercase is entered

opt.backspace = "indent,eol,start"

opt.splitright = true
opt.splitbelow = true

-- folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99 -- Prevents folds from being closed by default
opt.foldenable = true -- Enables folding
