local blue = '#000050'
local yellow = '#ffff00'
local white = '#ffffff'
local green = '#074508';

local background_color = blue
local tab_text_color = white
local current_selected_tab_text_color = yellow
local current_selected_tab_background_color = green

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
                bg = background_color
            },

            -- Background color
            background = {
                fg = tab_text_color,
            },

            -- Colors of "normal" tabs
            buffer_visible = {
                fg = tab_text_color,
            },
            buffer_selected = {
                fg = current_selected_tab_text_color,
                bg = current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of "modified" tabs
            modified = {
                fg = tab_text_color,
            },
            modified_visible = {
                fg = tab_text_color,
            },
            modified_selected = {
                fg = current_selected_tab_text_color,
                bg = current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of "duplicated" tabs
            duplicate_visible = {
                fg = tab_text_color,
            },
            duplicate = {
                fg = tab_text_color,
            },
            duplicate_selected = {
                fg = current_selected_tab_text_color,
                bg = current_selected_tab_background_color,
                bold = true,
                italic = true
            },

            -- Colors of separators
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
        }
    }
}
