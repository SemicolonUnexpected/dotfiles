vim.g.have_nerd_font = true
-- vim.g.nightflyVirtualTextColor = true

local opt = vim.opt

-- UI / Display
opt.termguicolors = true
opt.guicursor = ''
opt.mouse = ''
opt.showmode = false
opt.number = true
opt.relativenumber = true
opt.cursorline = true
-- opt.colorcolumn = '80'
opt.signcolumn = 'yes'
opt.wrap = false
opt.scrolloff = 10
opt.breakindent = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'

-- Undo / Backup
opt.undofile = true

-- Backspace behavior
opt.backspace = 'start,eol,indent'

-- Timing
opt.updatetime = 250
opt.timeoutlen = 300
