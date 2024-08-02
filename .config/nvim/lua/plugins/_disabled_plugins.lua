return {
    -- Disable "whick-key.nvim" plugin
	{
        "folke/which-key.nvim",
		enabled = false
	},

    -- Disable "flash.nvim" plugin
	{
        "folke/flash.nvim",
        enabled = false
    },

    -- Disable "tokyonight.nvim" plugin
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
