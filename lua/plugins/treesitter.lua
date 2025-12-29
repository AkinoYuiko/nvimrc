vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}, {
	load = function(plug_data)
		-- Treesitter setup
		vim.api.nvim_create_autocmd("BufReadPre", {
			once = true,
			callback = function()
				vim.opt.runtimepath:append(plug_data.path)
				---@diagnostic disable-next-line: missing-fields
				require("nvim-treesitter").setup({
					ensure_installed = { "rust", "lua", "python", "json", "vim", "markdown", "yaml" }, -- 安装的语言
					highlight = { enable = true }, -- 语法高亮
					indent = { enable = true }, -- 缩进
				})
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("PackChanged", {
	group = vim.api.nvim_create_augroup("TreesitterAutoUpdate", { clear = true }),
	callback = function(ev)
		if ev.data.spec and ev.data.spec.name == "nvim-treesitter" then -- 如果是 nvim-treesitter 更新或安装了
			vim.schedule(function()
				vim.cmd("TSUpdate")
				vim.notify("Treesitter parsers updated!", vim.log.levels.INFO)
			end)
		end
	end,
})
