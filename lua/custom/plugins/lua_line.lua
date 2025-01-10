return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "SmiteshP/nvim-navic",
    },
    config = function()
        local navic = require("nvim-navic")
        require('lualine').setup({
            winbar = {
                lualine_c = { function()
                    return navic.get_location()
                end
                }
            }
        }
        )
    end
}
