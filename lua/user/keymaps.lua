-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Search always center
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "j", "jzzzv", opts)
keymap("n", "k", "kzzzv", opts)
keymap("n", "{", "{zzzv", opts)
keymap("n", "}", "}zzzv", opts)
keymap("n", "{", "{zzzv", opts)
keymap("n", "}", "}zzzv", opts)
keymap("n", "<C-d>", "<C-d>zzzv", opts)
keymap("n", "<C-u>", "<C-u>zzzv", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
-- Comment
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
