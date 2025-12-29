-- Configuration for jsonls
vim.lsp.config("jsonls", {
	settings = {
		json = {
			allowComments = true,
			allowTrailingCommas = true,
		},
	},
})
