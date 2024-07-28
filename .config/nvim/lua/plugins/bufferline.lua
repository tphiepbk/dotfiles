local blue = '#000050'
local yellow = '#ffff00'
local white = '#ffffff'
local green = '#074508';

local background_color = blue
local tab_text_color = white
local current_selected_tab_text_color = yellow
local current_selected_tab_background_color = green

return {
    {
        'akinsho/bufferline.nvim',
        event = "VeryLazy",
        keys = {
            { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
            { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
        },
        opts = {
            options = {
                mode = "buffers",
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                separator_style = "slant",
                diagnostics = "" -- Disable diagnostics
            },
            highlights = {
                -- Fill color of the bufferline
                fill = {
                    bg = background_color
                },

                -- Background color
                background = {
                    fg = tab_text_color,
                },

                -- Tab colors
                buffer_visible = {
                    fg = tab_text_color,
                },
                buffer_selected = {
                    fg = current_selected_tab_text_color,
                    bg = current_selected_tab_background_color,
                    bold = true,
                    italic = true
                },

                -- Separator colors
                separator = {
                    fg = background_color,
                },
                separator_visible = {
                    fg = background_color,
                },
                separator_selected = {
                    fg = background_color,
                    bg = current_selected_tab_background_color,
                },

                -- Modified colors
                modified = {
                    bg = current_selected_tab_background_color
                },
                modified_visible = {
                    bg = current_selected_tab_background_color
                },
                modified_selected = {
                    bg = current_selected_tab_background_color
                },

                -- Diagnostic colors
                -- diagnostic = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- diagnostic_visible = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- diagnostic_selected = {
                --     bg = current_selected_tab_background_color,
                -- },

                -- Hint colors
                -- hint = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- hint_visible = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- hint_selected = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- hint_diagnostic = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- hint_diagnostic_visible = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- hint_diagnostic_selected = {
                --     bg = current_selected_tab_background_color,
                -- },

                -- Info colors
                -- info = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- info_visible = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- info_selected = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- info_diagnostic = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- info_diagnostic_visible = {
                --     bg = current_selected_tab_background_color,
                -- },
                -- info_diagnostic_selected = {
                --     bg = current_selected_tab_background_color,
                -- },

                -- Warning colors
                -- warning = {
                --     bg = current_selected_tab_background_color
                -- },
                -- warning_visible = {
                --     bg = current_selected_tab_background_color
                -- },
                -- warning_selected = {
                --     bg = current_selected_tab_background_color
                -- },
                -- warning_diagnostic = {
                --     bg = current_selected_tab_background_color
                -- },
                -- warning_diagnostic_visible = {
                --     bg = current_selected_tab_background_color
                -- },
                -- warning_diagnostic_selected = {
                --     bg = current_selected_tab_background_color
                -- },

                -- Error colors
                -- error = {
                --     bg = current_selected_tab_background_color
                -- },
                -- error_visible = {
                --     bg = current_selected_tab_background_color
                -- },
                -- error_selected = {
                --     bg = current_selected_tab_background_color
                -- },
                -- error_diagnostic = {
                --     bg = current_selected_tab_background_color
                -- },
                -- error_diagnostic_visible = {
                --     bg = current_selected_tab_background_color
                -- },
                -- error_diagnostic_selected = {
                --     bg = current_selected_tab_background_color
                -- },
            }
        }
    }
}
