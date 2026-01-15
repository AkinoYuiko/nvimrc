vim.pack.add({
	{ src = 'https://github.com/sainnhe/everforest' },
}, { confirm = false })
-- Colorscheme settings
-- require('everforest').setup({
-- 	background = 'hard',
-- 	transparent_background_level = 2,
-- 	show_eob = false,
-- })
vim.g.everforest_background = "hard"
vim.g.everforest_transparent_background = 2
vim.cmd.colorscheme('everforest')
