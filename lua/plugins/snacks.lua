return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		animate = { enable = false },
		bigfile = { enabled = true },
		dim = { enabled = true },
		explorer = { enabled = false },
		indent = {
			animate = {
				enabled = false,
			},
			enabled = true,
            only_scope = true,
		},
		input = { enabled = true },
		lazygit = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		picker = { enabled = false },
		quickfile = { enabled = false },
		scope = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		toggle = { enabled = true },
		words = { enabled = false },
		zen = {
			enabled = true,
			toggles = {
				dim = true,
				git_signs = false,
				diagnostics = false,
				line_number = false,
				relative_number = false,
				signcolumn = "no",
				indent = false,
			},
		},
		styles = {
			zen = {
				enter = true,
				fixbuf = false,
				minimal = false,
				width = 200,
				height = 0,
				backdrop = { transparent = false },
				keys = { q = false },
				zindex = 70,
				wo = {
					winhighlight = "NormalFloat:Normal",
                    wrap = true,
				},
				w = {
					snacks_main = true,
				},
			},
		},
	},
	keys = {
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>lg",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>u",
			function()
				Snacks.picker.undo()
			end,
			desc = "Undo Tree",
		},
	},
	init = function()
        vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				Snacks.toggle.dim():map("<leader>\\d")
			end,
		})
		vim.api.nvim_create_user_command("Zen", function()
			Snacks.zen()
			vim.wo.linebreak = true
		end, {})
	end,
}

