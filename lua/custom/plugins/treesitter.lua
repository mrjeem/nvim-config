return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "python", "lua", "vim", "vimdoc", "query" },
			sync_install = false,
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
		}
	end
}
