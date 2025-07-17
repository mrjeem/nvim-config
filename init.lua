require("config.keymaps")
require("config.options")
require("config.autocmds")
require("core.lazy")
-- require("core.lsp")

vim.g.python3_host_prog = vim.fn.expand("$HOME") .. "/.pyenv/shims/python"
