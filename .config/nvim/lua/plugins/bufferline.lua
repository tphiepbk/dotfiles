-- Define themes
local tphiepbk = {
    background_color = '#000050',
    tab_text_color = '#ffffff',
    current_selected_tab_text_color = '#ffff00',
    current_selected_tab_background_color = '#074508',
}

local powerline_dark = {
    background_color = '#202020',
    tab_text_color = '#84d5b1',
    current_selected_tab_text_color = '#2e311d',
    current_selected_tab_background_color = '#dfff00',
}

local molokai = {
    background_color = '#1e2021',
    tab_text_color = '#d85134',
    current_selected_tab_text_color = '#ffff00',
    current_selected_tab_background_color = '#f92173',
}

local theme = powerline_dark

return {
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
                bg = theme.background_color
            },

            -- Background color
            background = {
                fg = theme.tab_text_color,
            },

            -- Colors of "normal" tabs
            buffer_visible = {
                fg = theme.tab_text_color,
            },
            buffer_selected = {
                fg = theme.current_selected_tab_text_color,
                bg = theme.current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of "modified" tabs
            modified = {
                fg = theme.tab_text_color,
            },
            modified_visible = {
                fg = theme.tab_text_color,
            },
            modified_selected = {
                fg = theme.current_selected_tab_text_color,
                bg = theme.current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of "duplicated" tabs
            duplicate_visible = {
                fg = theme.tab_text_color,
            },
            duplicate = {
                fg = theme.tab_text_color,
            },
            duplicate_selected = {
                fg = theme.current_selected_tab_text_color,
                bg = theme.current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of separators
            separator = {
                fg = theme.background_color,
            },
            separator_visible = {
                fg = theme.background_color,
            },
            separator_selected = {
                fg = theme.background_color,
                bg = theme.current_selected_tab_background_color,
            },
        }
    }
}
