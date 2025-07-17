return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-telescope/telescope-ui-select.nvim" },
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				layout_strategy = "vertical",
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						-- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")

		-- Your keymaps remain the same
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		-- keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find string in cwd" })
		-- keymap.set("n", "fr", "<cmd>Telescope lsp_references<CR>", { desc = "Show LSP references" }) -- show definition, references
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

        local builtin = require("telescope.builtin")
        --vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        --vim.keymap.set("n", "<leader>fwf", builtin.live_grep, {})
        --vim.keymap.set("n", "<leader>fa", builtin.buffers, {})
        --vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        --vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {})
        vim.keymap.set("n", "<leader>ft", builtin.current_buffer_tags, {})
        vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
        vim.keymap.set("n", "<leader>fsp", "<cmd>Telescope spell_suggest<CR>", {})
	end,
}

