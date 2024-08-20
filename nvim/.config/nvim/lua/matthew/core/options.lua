local opt = vim.opt -- For conciseness

-- Line numbers
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Shows absolute line number on cursor line (when relative number is on)

-- Tabs & indentation
opt.tabstop = 2 -- 4 spaces for tabs
opt.shiftwidth = 2 -- 4 spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one

-- Line wrapping
opt.wrap = false -- Disable line wrapping

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = true -- Highlight the current cursor line

-- Appearance

-- Turn on termguicolors for nightfly colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Split windows
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom

-- Turn off swapfile
opt.swapfile = false
