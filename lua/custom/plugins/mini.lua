return {
    'echasnovski/mini.nvim',
    version = '*',
    config  = function()
        -- Highlight same words
        require('mini.cursorword').setup({ delay = 500 })
        -- Statusline
        require('mini.statusline').setup({ use_icons = true, })
    end
}
