local opt = vim.opt

opt.updatetime = 500  -- Makes similar words as under cursor highlight quicker, default: 4000

-- set spell
opt.spelllang = "en_gb"
opt.spell = true
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"


-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
--opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- leave 8 rows bottom and top while scrolling
opt.scrolloff = 8

opt.cmdheight = 1

-- undos saved
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldmethod = 'expr'
-- Default to treesitter folding
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- Prefer LSP folding if client supports it
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
         local client = vim.lsp.get_client_by_id(args.data.client_id)
         if client:supports_method('textDocument/foldingRange') then
             local win = vim.api.nvim_get_current_win()
             vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
        end
    end,
 })
vim.o.foldtext = ""
vim.opt.foldcolumn = "0"
vim.opt.fillchars:append({fold = " "})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

