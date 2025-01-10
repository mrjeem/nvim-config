-- Leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Tagbar
vim.keymap.set("n", "<leader>pt", ":TagbarToggle<Cr>")

-- Remove highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Jump to 1st line of the file
vim.keymap.set("n", "H", "<cmd>0<CR>")

-- Telescoe
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fwf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fa", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>ft", builtin.current_buffer_tags, {})
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})

vim.keymap.set("n", "<leader>fsp", "<cmd>Telescope spell_suggest<CR>", {})

-- LSP

vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder)
vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder)
vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- Fugitive
vim.keymap.set("n", "<leader>gs", "<cmd>Git stage *<CR>")
vim.keymap.set("n", "<leader>gc", "<cmd>Git commit *<CR>")

-- Half page jumping with curser being in the middle
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")

-- Keep the curser in the middle while scrolling throung search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Clipboard enhansments
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Rename
vim.keymap.set("n", "<leader>ra", "<cmd>lua vim.lsp.buf.rename()<CR>")

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>ha", mark.add_file)

vim.keymap.set("n", "<leader>1", function()
    ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
    ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
    ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
    ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>5", function()
    ui.nav_file(5)
end)
vim.keymap.set("n", "<leader>6", function()
    ui.nav_file(6)
end)
vim.keymap.set("n", "<leader>7", function()
    ui.nav_file(7)
end)
vim.keymap.set("n", "<leader>8", function()
    ui.nav_file(8)
end)
vim.keymap.set("n", "<leader>9", function()
    ui.nav_file(9)
end)
vim.keymap.set("n", "<leader>0", function()
    ui.nav_file(10)
end)
