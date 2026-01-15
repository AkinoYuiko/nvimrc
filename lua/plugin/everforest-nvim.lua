vim.pack.add({
	{ src = 'https://github.com/neanias/everforest-nvim' },
}, { confirm = false })
-- Colorscheme settings
require('everforest').setup({
	background = 'hard',
	transparent_background_level = 2,
	show_eob = false,
})
vim.cmd.colorscheme('everforest')
