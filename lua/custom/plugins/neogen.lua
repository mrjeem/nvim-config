return {
	"danymat/neogen",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"L3MON4D3/LuaSnip",
	},
	config = function ()
		local neogen = require("neogen").setup({
			enabled = true,
			languages = {
				python = {
					template = {
						annotation_convention = "numpydoc"
					}
				},
			},
		})
		vim.keymap.set("n", "<Leader>ds", function ()
			require("neogen").generate({ type = "func" })
		end)
	end,
}
