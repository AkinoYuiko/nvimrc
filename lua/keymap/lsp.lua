local map = require('core.keymap')
local cmd = map.cmd

if cmd == nil then return end

map.n({
	-- LSP keymaps
	['gd'] = vim.lsp.buf.definition,
	['gD'] = vim.lsp.buf.declaration,
	['gi'] = vim.lsp.buf.implementation,
	-- ['gr'] = vim.lsp.buf.references,
	-- remap <leader>K to hover()
	['<leader>k'] = vim.lsp.buf.hover,
	-- Fast diagnostic
	['<leader>dd'] = vim.diagnostic.open_float,
	['[d'] = function() vim.diagnostic.jump({ wrap = true, count = -1 }) end,
	[']d'] = function() vim.diagnostic.jump({ wrap = true, count = 1 }) end,
})

map.nx({
	['gw'] = vim.lsp.buf.format,
})
