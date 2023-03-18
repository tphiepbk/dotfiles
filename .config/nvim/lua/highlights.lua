vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

local namespace = vim.api.nvim_create_namespace("colorization")
vim.api.nvim_set_hl_ns(namespace)
vim.api.nvim_set_hl(namespace, "LineNr", {fg="#af00af", bg=None})
vim.api.nvim_set_hl(namespace, "CursorLineNr", {fg="#5fff00", bg=None})
vim.api.nvim_set_hl(namespace, "Search", {fg="#00ff00", bg=None})
vim.api.nvim_set_hl(namespace, "NonText", {fg="#767676", bg=None})
vim.api.nvim_set_hl(namespace, "SignColumn", {fg="#080808", bg=None})
vim.api.nvim_set_hl(namespace, "Comment", {fg="#af875f", bg=None})
vim.api.nvim_set_hl(namespace, "CursorLine", {fg=None, bg="#3a3a3a"})

vim.api.nvim_set_hl(namespace, "DiagnosticVirtualTextWarn", {fg="#ffffaf", italic = false, bold = false})
vim.api.nvim_set_hl(namespace, "DiagnosticVirtualTextError", {fg="#d70000", italic = false, bold = false})
vim.api.nvim_set_hl(namespace, "DiagnosticVirtualTextInfo", {fg="#00d7d7", italic = false, bold = false})
vim.api.nvim_set_hl(namespace, "DiagnosticVirtualTextHint", {fg="#5fafff", italic = false, bold = false})
vim.api.nvim_set_hl(namespace, "DiagnosticVirtualTextOk", {fg="#008700", italic = false, bold = false})

-- highlight yanked text for 300ms using the "Visual" highlight group
vim.cmd [[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=300})
    augroup END
]]
