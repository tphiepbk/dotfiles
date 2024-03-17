local yellow = '#ffff00'
local current_selected_tab_text_color = yellow
local background_color = '#000050'

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
      },
      highlights = {
        fill = {
            bg = background_color
        },
        buffer_selected = {
            fg = current_selected_tab_text_color,
            bold = true,
            italic = false
        },
      }
    }
  }
}
