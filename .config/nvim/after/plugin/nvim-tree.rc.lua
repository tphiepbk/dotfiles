local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

nvim_tree.setup{
    filters = {
        dotfiles = true,
    },
}

local keymap = vim.keymap.set
local opts = { noremap = true, silent = false }

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
