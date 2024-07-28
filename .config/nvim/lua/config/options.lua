vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = false          -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true     -- Put new windows below current
vim.opt.splitright = true     -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.opt.cmdheight = 0

-- Undo config
-- These values match with basic Vim
vim.opt.undolevels = 1000
vim.opt.undofile = false

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

-- Set list char
vim.opt.list = true
vim.opt.listchars:append({ trail = "~" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

-- Highlights
local namespace = vim.api.nvim_create_namespace("colorization")
vim.api.nvim_set_hl_ns(namespace)
vim.api.nvim_set_hl(namespace, "LineNr", {fg="#af00af", bg="None"})
vim.api.nvim_set_hl(namespace, "CursorLineNr", {fg="#5fff00", bg="None"})
vim.api.nvim_set_hl(namespace, "Search", {fg="#00ff00", bg="None"})
vim.api.nvim_set_hl(namespace, "NonText", {fg="#767676", bg="None"})
vim.api.nvim_set_hl(namespace, "SignColumn", {fg="#080808", bg="None"})

