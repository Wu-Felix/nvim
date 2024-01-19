-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local key = vim.keymap
vim.keymap.set("n", "gb", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true })
key.set("i", "jk", "<esc>")

-- windown
key.set("n", "qf", "<C-w>o")
key.set("n", "<up>", ":res +5<CR>", { noremap = true, silent = true })
key.set("n", "<down>", ":res -5<CR>", { noremap = true, silent = true })
key.set("n", "<left>", ":vertical resize-5<CR>", { noremap = true, silent = true })
key.set("n", "<right>", ":vertical resize+5<CR>", { noremap = true, silent = true })

-- Lspsaga
key.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
key.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
key.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
key.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")
