local orange = "#ff8700"

local configuration = function ()
    require("nightfox").setup({
        options = {
            transparent = true,
            dim_inactive = true,
            styles = {
                comments = "italic",
                keywords = "bold,italic",
                types = "bold,italic"
            },
            on_colors = function(colors)
                colors.border = orange
            end,
        }
    })
end

return
{
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
        configuration()
        -- Available variants:
        --     nightfox
        --     dayfox
        --     dawnfox
        --     duskfox
        --     nordfox
        --     terafox
        --     carbonfox
        vim.cmd.colorscheme "carbonfox"
    end
}

