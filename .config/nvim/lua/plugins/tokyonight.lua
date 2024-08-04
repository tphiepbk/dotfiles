-- tokyonight is the default colorscheme

local orange = "#ff8700"

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "storm",
        styles = {
            sidebars = "transparent",
            floats = "transparent",
            lualine_bold = true
        },
        transparent = true,
        on_colors = function(colors)
            colors.border = orange
        end,
    },
}
