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
	tab = '>~',        -- Show tab as ▸
	trail = '@',       -- Show trailing spaces as •
	extends = '>',     -- Show end-of-line wraps as >
	precedes = '<',    -- Show start-of-line wraps as <
}

-- set leader key
vim.g.mapleader = ","
