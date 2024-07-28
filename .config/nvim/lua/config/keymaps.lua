-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   term_mode = "t",
--   visual_block_mode = "x",
--   command_mode = "c",

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local all_modes = { "n", "i", "v", "x", "t", "c" }

-- Disable arrow keys
keymap.set(all_modes, "<Up>", "<Nop>", opts)
keymap.set(all_modes, "<Down>", "<Nop>", opts)
keymap.set(all_modes, "<Left>", "<Nop>", opts)
keymap.set(all_modes, "<Right>", "<Nop>", opts)

-- Disable swapping lines
keymap.set(all_modes, "<A-j>", "<Nop>", opts)
keymap.set(all_modes, "<A-k>", "<Nop>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Remove highlight search
keymap.set("n", "<Esc>", ":nohl<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<CR>")
keymap.set("n", "sv", ":vsplit<CR>")

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sj", "<C-w>j")

-- Resize window
keymap.set("n", "<C-w><Left>", "<C-w>>")
keymap.set("n", "<C-w><Right>", "<C-w><")
keymap.set("n", "<C-w><Up>", "<C-w>-")
keymap.set("n", "<C-w><Down>", "<C-w>+")

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Quit and save
keymap.set("n", "<Leader>qq", ":q<CR>", opts)
keymap.set("n", "<Leader>qa", ":qa<CR>", opts)
keymap.set("n", "<Leader>wq", ":wq<CR>", opts)

-- Fix bug with "s" key
keymap.set("n", "s", "<Nop>", opts)
