vim.pack.add({
	"https://github.com/mason-org/mason.nvim", -- lsp 安装管理器
	"https://github.com/neovim/nvim-lspconfig", -- lsp 配置
	"https://github.com/nvim-mini/mini.pick", -- 文件/缓冲区选择器
	"https://github.com/nvim-mini/mini.files", -- 文件浏览器
})

vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
	callback = function()
		require("mason").setup() -- Mason
		require("mini.pick").setup() -- mini.pick 配置
		require("mini.files").setup({ -- mini.files 文件浏览器配置
			windows = { preview = true }, -- 打开预览窗口
		})
	end,
})

-- 启用 LSP
vim.lsp.enable({ "stylua", "rust_analyzer", "jsonls" })
-- LSP 诊断显示
vim.diagnostic.config({ virtual_text = true }) -- 行内文本提示

-- format
vim.keymap.set("n", "<leader>lf", function()
	vim.lsp.buf.format()
end, { desc = "format" })

-- Auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format()
	end,
	pattern = "*",
})

require("lsp.jsonls")
