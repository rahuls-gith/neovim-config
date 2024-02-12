return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.completion.spell,

				-- For JavaScript
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,

				-- For Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})
		vim.keymap.set("n", "<C-s>", vim.lsp.buf.format, {})
	end,
}
