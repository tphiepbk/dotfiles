local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local blue = '#005f83'
local yellow = '#ffff00'
local white = '#ffffff'

local background_color = blue
local tab_text_color = white
local current_selected_tab_text_color = yellow

bufferline.setup{
    options = {
        separator_style = 'slant',
        show_close_icon = false,
        show_buffer_close_icons = false,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end
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
    },
}

