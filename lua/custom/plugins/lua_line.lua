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
                    local location = navic.get_location()
                    if location ~= "" then
                        return location
                    else
                        return "󰊕"
                    end
                end
                }
            }
        }
        )
    end
}
