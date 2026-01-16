local keys = {
	-- File/Package keymaps
	{ '<leader>e', ':lua MiniFiles.open()<CR>' },
	{ '<leader>f', ':Pick files<CR>' },
	-- { '<leader>g', ':Pick grep_live<CR>' },
	{ '<leader>h', ':Pick help<CR>' },
	{ '<leader>b', ':Pick buffers<CR>' },
}
for _, map in ipairs(keys) do
	local opts = { desc = map.desc }
	if map.silent ~= nil then opts.silent = map.silent end
	if map.noremap ~= nil then
		opts.noremap = map.noremap
	else
		opts.noremap = true
	end
	if map.expr ~= nil then opts.expr = map.expr end

	local mode = map.mode or 'n'
	vim.keymap.set(mode, map[1], map[2], opts)
end
