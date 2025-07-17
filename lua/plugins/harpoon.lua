return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({})

        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
        vim.keymap.set("n", "<leader>ha", mark.add_file)

        for i = 0, 9 do
            vim.keymap.set("n", "<leader>" .. tostring(i), function() ui.nav_file(i) end)
        end
	end,
}

