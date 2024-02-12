local opt = vim.opt

-- Indenting
opt.expandtab = false
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Tab and Space setting
opt.list = true
opt.listchars = {
	-- space = '_',      -- Show space as ␣
	tab = ">~",  -- Show tab as ▸
	trail = "@", -- Show trailing spaces as •
	extends = ">", -- Show end-of-line wraps as >
	precedes = "<", -- Show start-of-line wraps as <
}

-- set leader key
vim.g.mapleader = " "

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- Relative Line Number for NetRW
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- Prevent line wrapping
opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"
