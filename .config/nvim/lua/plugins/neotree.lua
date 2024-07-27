return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        close_if_last_window = true,
        filesystem = {
            filtered_items = {
                visible = true,
                show_hidden_count = true,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    -- '.git',
                    -- '.DS_Store',
                    -- 'thumbs.db',
                },
                never_show = {},
            },
        },
        window = {
            width = 30,
            mappings = {
                ["s"] = "",
            }
        }
    }
}
