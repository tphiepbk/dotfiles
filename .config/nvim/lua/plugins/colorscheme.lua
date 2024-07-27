local orange = "#ff8700"

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            transparent = true,
            on_colors = function(colors)
                colors.border = orange
            end,
        },
    }
}
