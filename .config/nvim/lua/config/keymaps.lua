-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   term_mode = "t",
--   visual_block_mode = "x",
--   command_mode = "c",

local lazymap = LazyVim.safe_keymap_set

local opts = { remap = false, silent = true }
local all_modes = { "n", "i", "v", "x", "t", "c" }

-- Disable arrow keys
lazymap(all_modes, "<Up>", "<Nop>", opts)
lazymap(all_modes, "<Down>", "<Nop>", opts)
lazymap(all_modes, "<Left>", "<Nop>", opts)
lazymap(all_modes, "<Right>", "<Nop>", opts)

-- Disable swapping lines
lazymap(all_modes, "<A-j>", "<Nop>", opts)
lazymap(all_modes, "<A-k>", "<Nop>", opts)

-- Select all
lazymap("n", "<C-a>", "gg<S-v>G", opts)

-- Remove highlight search
lazymap({"i", "n"}, "<Esc>", "<cmd>nohl<cr><esc>", opts)

-- Split window
lazymap("n", "ss", "<cmd>split<cr>")
lazymap("n", "sv", "<cmd>vsplit<cr>")

-- Move window
lazymap("n", "sh", "<C-w>h")
lazymap("n", "sk", "<C-w>k")
lazymap("n", "sl", "<C-w>l")
lazymap("n", "sj", "<C-w>j")

-- Better resize window
local resize = require("winresize").resize
lazymap("n", "<C-Left>", function() resize(0, 2, "left") end, opts)
lazymap("n", "<C-Right>", function() resize(0, 2, "right") end, opts)
lazymap("n", "<C-Up>", function() resize(0, 1, "up") end, opts)
lazymap("n", "<C-Down>", function() resize(0, 1, "down") end, opts)

-- Stay in indent mode
lazymap("v", "<", "<gv", opts)
lazymap("v", ">", ">gv", opts)

-- Quit and save
lazymap("n", "<Leader>qq", ":q<cr>", opts)
lazymap("n", "<Leader>qa", ":qa<cr>", opts)
lazymap("n", "<Leader>wq", ":wq<cr>", opts)

-- Fix bug with "s" key
-- When s is pressed, the previous character is deleted and insert mode is triggered
lazymap("n", "s", "<Nop>", opts)

-- Delete buffer
lazymap("n", "<F4>", LazyVim.ui.bufremove, opts)

