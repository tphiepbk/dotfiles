vim.api.nvim_set_hl(0, 'NeoTreeIndentMarker', { fg = '#ff5733' })
vim.api.nvim_set_hl(0, 'NeoTreeExpander', { fg = '#ffee33' })

return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        add_blank_line_at_top = true,
        auto_clean_after_session_restore = true,
        close_if_last_window = true,
        popup_border_style = "rounded",
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
            follow_current_file = {
                enabled = true,
            },
            use_libuv_file_watcher = true,
        },
        window = {
            mappings = {
                ["s"] = "",
            },
        },
        default_component_configs = {
            indent = {
                padding = 2,
                indent_size = 3,
                last_indent_marker = "╰⎯⎯",
                with_expanders = "true",
                expander_collapsed = "▶",
                expander_expanded = "▼",
            }
        }
    }
}

