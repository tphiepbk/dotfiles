return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'powerline_dark',
            -- theme = 'molokai',

            -- section_separators = { left = '', right = '' },
            -- section_separators = { right = '', left = '' },
            section_separators = { left = '', right = '' },

            component_separators = { left = '', right = '' },
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
                    },
                },
                {
                    'diff',
                }
            },
            lualine_c = {
                {
                    'filename',
                    file_status = true,
                    path = 2,
                    icon = {
                        "",
                    }
                },
                {
                    'filesize',
                    icon = {
                        '',
                    }
                },
            },
            lualine_x = {
                {
                    'searchcount',
                    icon = {
                        ''
                    }
                },
                {
                    'selectioncount',
                    icon = {
                        ''
                    }
                },
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
