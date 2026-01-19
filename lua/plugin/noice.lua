vim.pack.add({
	'https://github.com/MunifTanjim/nui.nvim',
	'https://github.com/folke/noice.nvim',
}, { confirm = false })

require('noice').setup({
	views = { cmdline_popup = { position = { row = '25%', col = '50%' } } },
	messages = { view_search = false },
	lsp = {
		override = {
			['vim.lsp.util.convert_input_to_markdown_lines'] = true,
			['vim.lsp.util.stylize_markdown'] = true,
		},
	},
})
