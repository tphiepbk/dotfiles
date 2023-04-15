-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set map leader key
vim.g.mapleader = ","

-- Disable arrow keys
local disable_arrow_keys_modes = {"n", "i", "v", "x", "t", "c"}
keymap(disable_arrow_keys_modes, "<Up>", "<Nop>", opts)
keymap(disable_arrow_keys_modes, "<Down>", "<Nop>", opts)
keymap(disable_arrow_keys_modes, "<Left>", "<Nop>", opts)
keymap(disable_arrow_keys_modes, "<Right>", "<Nop>", opts)

-- Disable unnecessary keys
local disable_unnecessary_keys_modes = {"n", "v", "x"}
-- keymap(disable_unnecessary_keys_modes, "<Space>", "<Nop>", opts)
keymap(disable_unnecessary_keys_modes, ".", "<Nop>", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Remove highlight search
keymap("n", "<Esc>", ":nohl<CR>", opts)

-- Split window
keymap("n", "ss", ":split<Return><C-w>w")
keymap("n", "sv", ":vsplit<Return><C-w>w")

-- Move window
keymap("n", "sh", "<C-w>h")
keymap("n", "sk", "<C-w>k")
keymap("n", "sj", "<C-w>j")
keymap("n", "sl", "<C-w>l")

-- Resize window
keymap("n", "s<Left>", "<C-w>>")
keymap("n", "s<Right>", "<C-w><")
keymap("n", "s<Up>", "<C-w>-")
keymap("n", "s<Down>", "<C-w>+")

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Switch and close tabs
keymap("n", "<tab>", ":bn<CR>", opts)
keymap("n", "<S-tab>", ":bp<CR>", opts)
keymap("n", "<Leader>bd", ":bd%<CR>", opts)

-- Source current file
keymap("n", "<Leader>vr", ":source %<CR>", opts)

-- Quit and save
keymap("n", "<Leader>qq", ":q<CR>", opts)
keymap("n", "<Leader>qa", ":qa<CR>", opts)
keymap("n", "<Leader>wq", ":wq<CR>", opts)

