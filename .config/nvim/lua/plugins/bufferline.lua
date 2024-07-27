-- local blue = '#005f83'
local blue = '#000050'
local yellow = '#ffff00'
local white = '#ffffff'

local background_color = blue
local tab_text_color = white
local current_selected_tab_text_color = yellow

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
            },
            highlights = {
                -- Fill color of the bufferline
                fill = {
                    bg = background_color
                },

                -- Tab colors
                background = {
                    fg = tab_text_color,
                },
                buffer_visible = {
                    fg = tab_text_color,
                },
                buffer_selected = {
                    fg = current_selected_tab_text_color,
                    bold = false,
                    italic = false
                },

                -- Separator colors
                separator = {
                    fg = background_color,
                },
                separator_selected = {
                    fg = background_color,
                },
                separator_visible = {
                    fg = background_color,
                },
            }
        }
    }
}
