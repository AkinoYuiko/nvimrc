vim.pack.add({ 'https://github.com/folke/snacks.nvim' }, { confirm = false })
local picker_exclude = {
	'**/.git/*',
	'**/node_modules/*',
	'**/.yarn/cache/*',
	'**/.yarn/install*',
	'**/.yarn/releases/*',
	'**/.pnpm-store/*',
	'**/.idea/*',
	'**/.DS_Store',
	'build/*',
	'coverage/*',
	'dist/*',
	'hodor-types/*',
	'**/target/*',
	'**/public/*',
	'**/digest*.txt',
	'**/.node-gyp/**',
}
require('snacks').setup({
	bigfile = { enabled = true },
	indent = {
		enabled = true,
		animate = { duration = { step = 15, total = 300 } },
	},
	input = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = {
		enabled = true,
		animate = { duration = { step = 6, total = 60 } },
		animate_repeat = { delay = 30, duration = { step = 3, total = 30 } },
	},
	statuscolumn = { enabled = true },
	styles = { notification = { wo = { wrap = true } } },
	words = { enabled = true },
	picker = {
		sources = {
			files = {
				hidden = false,
				ignored = false,
				win = {
					input = {
						keys = {
							['<S-h>'] = 'toggle_hidden',
							['<S-i>'] = 'toggle_ignored',
							['<S-f>'] = 'toggle_follow',
							['<C-y>'] = { 'yazi_copy_relative_path', mode = { 'n', 'i' } },
						},
					},
				},
				exclude = picker_exclude,
			},
			smart = {
				exclude = picker_exclude,
			},
			grep = {
				hidden = false,
				ignored = false,
				win = {
					input = {
						keys = {
							['<S-h>'] = 'toggle_hidden',
							['<S-i>'] = 'toggle_ignored',
							['<S-f>'] = 'toggle_follow',
						},
					},
				},
				exclude = picker_exclude,
			},
			grep_buffers = {},
			explorer = {
				hidden = true,
				ignored = true,
				supports_live = true,
				auto_close = true,
				diagnostics = true,
				diagnostics_open = false,
				focus = 'list',
				follow_file = true,
				git_status = true,
				git_status_open = false,
				git_untracked = true,
				jump = { close = true },
				tree = true,
				watch = true,
				exclude = {
					'.git',
					'.pnpm-store',
					'.venv',
					'.DS_Store',
					'**/.node-gyp/**',
				},
			},
		},
	},
})
