-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- Comment
map("n", "<leader>#", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>#", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>Neotree<CR>", { desc = "nvimtree focus window", remap = true })

-- buffers
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "go to next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "go to next buffer" })
