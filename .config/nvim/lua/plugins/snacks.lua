local logo = [[
████████╗██████╗ ██╗  ██╗██╗███████╗██████╗ ██████╗ ██╗  ██╗
╚══██╔══╝██╔══██╗██║  ██║██║██╔════╝██╔══██╗██╔══██╗██║ ██╔╝
   ██║   ██████╔╝███████║██║█████╗  ██████╔╝██████╔╝█████╔╝ 
   ██║   ██╔═══╝ ██╔══██║██║██╔══╝  ██╔═══╝ ██╔══██╗██╔═██╗ 
   ██║   ██║     ██║  ██║██║███████╗██║     ██████╔╝██║  ██╗
   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═════╝ ╚═╝  ╚═╝
]]

return {
    "folke/snacks.nvim",
    dependencies = {
        {"nvim-mini/mini.nvim"},
        {"nvim-tree/nvim-web-devicons"},
    },
    opts = {
        -- Configure dashboard
        dashboard = {
            enabled = true,
            preset = {
                header = logo,
                -- Define the keys preset to override the default one,
                -- delete the "s" (restore session) key
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
            },
            sections = {
                {
                    section = "header"
                },
                {
                    section = "terminal",
                    cmd = "pokemon-colorscripts -r --no-title; sleep .1",
                    pane = 2,
                    indent = 4,
                    height = 15,
                    random = 10,
                },
                {
                    section = "keys",
                    gap = 1,
                    padding = 1
                },
                {
                    section = "recent_files",
                    title = "Recent Files",
                    icon = " ",
                    pane = 2,
                    indent = 2,
                    padding = 1
                },
                {
                    section = "projects",
                    title = "Projects",
                    icon = " ",
                    pane = 2,
                    indent = 2,
                    padding = 1
                },
                {
                    section = "startup"
                }
            }
        },
        -- Configure explorer
        explorer = {
            replace_netrw = true
        },
        -- Configure statuscolumn
        statuscolumn = {
            enabled=true
        }
    },
}
