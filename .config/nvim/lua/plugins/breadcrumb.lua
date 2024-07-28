local target = {
    "LunarVim/breadcrumbs.nvim",
    dependencies = {
        {"SmiteshP/nvim-navic"},
    },
}

function target.config()
    require("nvim-navic").setup {
        lsp = {
            auto_attach = true,
        },
    }
    require("breadcrumbs").setup()
end

return target
