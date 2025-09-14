-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   term_mode = "t",
--   visual_block_mode = "x",
--   command_mode = "c",

local opts = { remap = false, silent = true }
local all_modes = { "n", "i", "v", "x", "t", "c" }

-- Disable swapping lines
vim.keymap.set(all_modes, "<A-j>", "<Nop>", opts)
vim.keymap.set(all_modes, "<A-k>", "<Nop>", opts)

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Remove highlight search
vim.keymap.set({"i", "n"}, "<Esc>", "<cmd>nohl<cr><esc>", opts)

-- Split window
vim.keymap.set("n", "ss", "<cmd>split<cr>")
vim.keymap.set("n", "sv", "<cmd>vsplit<cr>")

-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sl", "<C-w>l")
vim.keymap.set("n", "sj", "<C-w>j")

-- Better resize window
local resize = require("winresize").resize
vim.keymap.set("n", "<C-Left>", function() resize(0, 2, "left") end, opts)
vim.keymap.set("n", "<C-Right>", function() resize(0, 2, "right") end, opts)
vim.keymap.set("n", "<C-Up>", function() resize(0, 1, "up") end, opts)
vim.keymap.set("n", "<C-Down>", function() resize(0, 1, "down") end, opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Quit and save
vim.keymap.set("n", "<Leader>qq", ":q<cr>", opts)
vim.keymap.set("n", "<Leader>qa", ":qa<cr>", opts)
vim.keymap.set("n", "<Leader>wq", ":wq<cr>", opts)
vim.keymap.set("n", "<Leader>ww", ":w!<cr>", opts)

-- Fix bug with "s" key
-- When s is pressed, the previous character is deleted and insert mode is triggered
vim.keymap.set("n", "s", "<Nop>", opts)

