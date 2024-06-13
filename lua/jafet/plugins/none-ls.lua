return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua formating
				null_ls.builtins.formatting.stylua,

				-- shopify theme check
				--null_ls.builtins.formatting.theme_check,
				--null_ls.builtins.diagnostics.theme_check,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
	end,
}
