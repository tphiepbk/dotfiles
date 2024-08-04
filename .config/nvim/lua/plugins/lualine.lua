return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            -- theme = 'powerline_dark',
            theme = 'molokai',

            -- section_separators = { left = '', right = '' },
            section_separators = { right = '', left = '' },
            -- section_separators = { left = '', right = '' },

            component_separiators = { left = '', right = '' },
            -- component_separators = "",

            disabled_filetypes = {},
            globalstatus = true
        },
        sections = {
            lualine_a = {
                {
                    'mode',
                    icon = {
                        '',
                        align = 'left',
                        -- color = {
                        --     fg = 'white'
                        -- }
                    }
                }
            },
            lualine_b = {
                {
                    'branch',
                    icon = {
                        '',
                        align = 'right',
                        color = {
                            fg = 'white'
                        }
                    }
                }
            },
            lualine_c = {
                {
                    'filename',
                    file_status = true, -- displays file status (readonly status, modified status)
                    path = 2, -- 0 = just filename, 1 = relative path, 2 = absolute path
                    icon = {
                        "",
                        color = {
                            fg = 'white'
                        }
                    }
                }
            },
            lualine_x = {
                {
                    'diagnostics',
                    sources = { "nvim_diagnostic" },
                    symbols = {
                        error = ' ',
                        warn = ' ',
                        info = ' ',
                        hint = ' '
                    }
                },
                'encoding',
                'filetype'
            },
            lualine_y = {
                {
                    'progress'
                }
            },
            lualine_z = {
                {
                    'location'
                }
            }
        },
        tabline = {},
        extensions = { 'fugitive' }
    },
}
