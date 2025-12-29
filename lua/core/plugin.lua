vim.pack.add({
	{ src = "https://github.com/akinoyuiko/lightline.vim", name = "lightline" },
	"https://github.com/sainnhe/everforest",
})

-- Plugin Settings
vim.g.lightline = { colorscheme = "everforest" }
vim.g.everforest_transparent_background = 2
vim.g.everforest_better_performance = 1
vim.cmd.colorscheme("everforest")

require("plugins.blinkcmp")

require("plugins.lsp")

require("plugins.treesitter")
