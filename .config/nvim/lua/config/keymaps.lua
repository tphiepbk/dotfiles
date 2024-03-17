-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   term_mode = "t",
--   visual_block_mode = "x",
--   command_mode = "c",

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Disable arrow keys
local disable_arrow_keys_modes = { "n", "i", "v", "x", "t", "c" }
keymap.set(disable_arrow_keys_modes, "<Up>", "<Nop>", opts)
keymap.set(disable_arrow_keys_modes, "<Down>", "<Nop>", opts)
keymap.set(disable_arrow_keys_modes, "<Left>", "<Nop>", opts)
keymap.set(disable_arrow_keys_modes, "<Right>", "<Nop>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Remove highlight search
keymap.set("n", "<Esc>", ":nohl<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

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
