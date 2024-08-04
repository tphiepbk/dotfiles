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
                        '',
                        align = 'left',
                    }
                }
            },
            lualine_b = {
                {
                    'branch',
                    icon = {
                        '',
                    }
                }
            },
            lualine_c = {
                {
                    'filename',
                    file_status = true, -- displays file status (readonly status, modified status)
                    path = 2, -- 0 = just filename, 1 = relative path, 2 = absolute path
                    icon = {
                        "",
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
                {
                    'encoding',
                    icon = {
                        ''
                    }
                },
                {
                    'fileformat',
                },
                {
                    'filetype',
                }
            },
            lualine_y = {
                {
                    'progress',
                    icon = {
                        "",
                        align = "right"
                    }
                }
            },
            lualine_z = {
                {
                    'location',
                    icon = {
                        "",
                        align = "right"
                    }
                }
            }
        },
        tabline = {},
        extensions = { 'fugitive' }
    },
}
