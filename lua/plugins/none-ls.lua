return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua formating
				null_ls.builtins.formatting.stylua,

				-- python formating and linting
				null_ls.builtins.formatting.black,
				--null_ls.builtins.diagnostics.pyright,

				-- django formating and linting
				--null_ls.builtins.formatting.djlint,
				--null_ls.builtins.diagnostics.djlint,
				--
				-- example for diagnostics: null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
	end,
}
