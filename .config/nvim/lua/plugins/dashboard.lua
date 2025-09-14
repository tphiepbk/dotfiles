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
    opts = {
        dashboard = {
            preset = {
                header = logo
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
                },
            }
        },
    },
}
