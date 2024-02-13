local opt = vim.opt
local g = vim.g
-- set leader key
g.mapleader = " "

-- Netrw Settings
-- Relative Line Number for NetRW
g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
-- Remove banner from netrw
g.netrw_banner = 0
-- Open in prior window
g.netrw_browse_split = 4
-- Change from left splitting to right splitting
g.netrw_altv = 1
-- Tree style view in netrw
g.netrw_liststyle = 3



opt.title = true																-- Show title
vim.cmd('set path+=**')															-- Search current directory recursively
opt.syntax = "ON"
opt.compatible = false															-- Turn off vi compatibility mode

-- Line numbers
opt.nu = true
opt.relativenumber = true

opt.mouse = 'a'																	-- Enable mouse in all modes
opt.ignorecase = true															-- Enable case insensitive searching
opt.smartcase = true															-- all searches are case insensitive unless there's a capital letter

opt.hlsearch = true																-- Enable all highlighted search results
opt.incsearch = true															-- Enable incremental search

-- Prevent line wrapping
opt.wrap = false

-- Indenting
opt.expandtab = false
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4																	-- Tab = 4 spaces
opt.softtabstop = 4

opt.fileencoding = "utf-8"														-- Encoding set to utf-8
opt.pumheight = 10																-- number of items in popup menu
opt.showtabline = 2																-- Always show the tab line
opt.laststatus = 2																-- always show statusline
opt.showcmd = true
opt.cmdheight = 2
opt.showmode = true
opt.scrolloff = 10																-- Scroll page when cursor is 10 lines from top/bottom
opt.sidescrolloff = 10															-- Scroll page when cursor is 10 spaces from left/right
opt.completeopt = {"menuone", "noselect"}
opt.splitbelow = true															-- split go below
opt.splitright = true															-- vertical split go right
opt.termguicolors = true
vim.cmd.colorscheme('habamax')

-- Tab and Space setting
opt.list = true
opt.listchars = {
	-- space = '_',      -- Show space as ␣
	tab = ">~",  -- Show tab as ▸
	trail = "@", -- Show trailing spaces as •
	extends = ">", -- Show end-of-line wraps as >
	precedes = "<", -- Show start-of-line wraps as <
}

vim.cmd('filetype plugin on')													-- set filetype
vim.cmd('set wildmenu')															-- enable wildmenu

opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

