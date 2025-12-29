local au = vim.api.nvim_create_autocmd
au("BufReadPost", {
	pattern = "*",
	command = [[if line("'\"")>1&&line("'\"")<=line("$")&&&ft!~#'commit'|exe "norm! g`\""|endif]],
})

au("TextYankPost", {
	desc = "highlight copying text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ timeout = 500 })
	end,
})
