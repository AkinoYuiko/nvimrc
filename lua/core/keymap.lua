local map = vim.keymap.set
for k, v in pairs({ [";"] = ":", H = "^", L = "g_" }) do
	map({ "n", "v", "o" }, k, v)
end
-- Toggles
for k, v in pairs({ m = "nu", w = "wrap", l = "list" }) do
	map("n", "<leader>" .. k, ("<cmd>set %s! %s?<cr>"):format(v, v))
end
-- ESC cancel highlight
map("n", "<Esc>", "<cmd>noh<cr>")
