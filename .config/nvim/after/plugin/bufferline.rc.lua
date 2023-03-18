local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup{
    options = {
        separator_style = 'slant',
        show_close_icon = false,
        show_buffer_close_icons = false,
    },
    highlights = {
        separator = {
            fg = '#005f83',
        },
        separator_selected = {
            fg = '#005f83',
        },
        background = {
            fg = '#657b83',
            bg = '#002b36'
        },
        buffer_selected = {
            fg = '#ffffff',
            bold = true,
            italic = true
        },
        fill = {
            bg = '#005f83'
        }
    }
}

