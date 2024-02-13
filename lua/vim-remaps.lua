local map = vim.keymap.set

-- Access NetRW and set relative line numbers in the window
map('n', "<leader>pv", vim.cmd.Ex)

-- Move selected block of code
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Half page up and down keeps the cursor in the middle of the screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Search results using / are in the middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- <leader-y> to copy to system clipboard; <y> to copy to register
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- map Esc to Ctrl+c
map("i", "<C-c>", "<Esc>")

-- Replace the word you are currenly on throughout the file
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Automatically close brackets, parethesis, and quotes

map("i", "'", "''<left>")
map("i", "\"", "\"\"<left>")
map("i", "(", "()<left>")
map("i", "[", "[]<left>")
map("i", "{", "{}<left>")
map("i", "{;", "{};<left><left>")
map("i", "/*", "/**/<left><left>")

-- Open netrw in 25% split in tree view
map("n", "<leader>e", ":25Lex<CR>")			-- space+e toggles netrw tree view 


-- buffer navigation
map("n", "<Tab>", ":bnext <CR>")				-- Tab goes to next buffer
map("n", "<S-Tab>", ":bprevious <CR>")			-- Shift+Tab goes to previous buffer
map("n", "<leader>d", ":bd <CR>")				-- Space+d delets current buffer

-- adjust split sizes easier
map("n", "<C-Left>", ":vertical resize +3<CR>")		-- Control+Left resizes vertical split +
map("n", "<C-Right>", ":vertical resize -3<CR>")	-- Control+Right resizes vertical split -

-- reload config
map("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>")	-- reload neovim config

-- Tab bindings 
map("n", "<leader>t", ":tabnew<CR>")			-- space+t creates new tab
map("n", "<leader>x", ":tabclose<CR>")			-- space+x closes current tab
map("n", "<leader>j", ":tabprevious<CR>")		-- space+j moves to previous tab
map("n", "<leader>k", ":tabnext<CR>")			-- space+k moves to next tab

-- easy split generation
map("n", "<leader>v", ":vsplit")				-- space+v creates a veritcal split
map("n", "<leader>s", ":split")					-- space+s creates a horizontal split

-- easy split navigation
map("n", "<C-h>", "<C-w>h")						-- control+h switches to left split
map("n", "<C-l>", "<C-w>l")						-- control+l switches to right split
map("n", "<C-j>", "<C-w>j")						-- control+j switches to bottom split
map("n", "<C-k>", "<C-w>k")						-- control+k switches to top split

