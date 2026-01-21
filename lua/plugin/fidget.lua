vim.pack.add({ 'https://github.com/j-hui/fidget.nvim' }, {
	confirm = false,
	load = function(pack)
		vim.api.nvim_create_autocmd('VimEnter', {
			group = vim.api.nvim_create_augroup('plugin.fidget', { clear = trueL }),
			once = true,
			callback = function()
				vim.schedule(function()
					vim.cmd.packadd(pack.spec.name)
					require('fidget').setup({ notification = { override_vim_notify = true } })
				end)
			end,
		})
	end,
})
