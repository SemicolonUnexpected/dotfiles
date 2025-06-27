vim.g.have_nerd_font = false

vim.opt.guicursor = 'n-v-i-c:block-Cursor'

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Mouse
vim.opt.mouse = 'a' -- Enabled in all modes

-- Removes the "-- INSERT --"
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true
-- Default values for the size of undofiles
-- vim.opt.undolevels = 1000
-- vim.opt.undoreload = 10000

-- Sensible search options
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
-- vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Time before mapping is considered invalid
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.opt.inccommand = 'split'

-- Show which line the cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Text wrapping
vim.opt.wrap = true
