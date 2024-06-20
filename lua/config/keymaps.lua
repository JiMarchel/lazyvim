-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<C-S-Down>", "yyp", { desc = "Copy line down" })
keymap.set("i", "<C-S-Down>", "<Esc>yyPgi", { desc = "Copy line down in insert mode" })
keymap.set("v", "<C-S-Down>", "y`>pgv", { noremap = true, silent = true, desc = "Copy line down in visual mode" })

-- Move line up with Alt-Up
keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Move line down with Alt-Down
keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })

-- Dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
