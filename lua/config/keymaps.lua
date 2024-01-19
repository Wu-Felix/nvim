-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
  -- Window & splits
  { from = "qf", to = "<C-w>o" },
  { from = "<up>", to = ":res +5<CR>" },
  { from = "<down>", to = ":res -5<CR>" },
  { from = "<left>", to = ":vertical resize-5<CR>" },
  { from = "<right>", to = ":vertical resize+5<CR>" },
  -- { from = "sh",            to = "se", },
  -- { from = "sh",            to = "<C-w>t<C-w>K", },
  -- { from = "sv",            to = "<C-w>t<C-w>H", },
  { "n", from = "gp", to = "<cmd>Lspsaga peek_definition<CR>", mode = mode_i },
  { "n", from = "<leader>ca", to = "<cmd>Lspsaga code_action<CR>", mode = mode_i },
  { "n", from = "[d", to = "<cmd>Lspsaga diagnostic_jump_prev<CR>", mode = mode_i }, -- jump to previous diagnostic in buffer
  { "n", from = "]d", to = "<cmd>Lspsaga diagnostic_jump_next<CR>", mode = mode_i },
  -- Other
  { from = "jk", to = "<esc>", mode = mode_i },

  -- Joshuto
}
-- vim.keymap.del("n", "<Leader>gg", { noremap = true, silent = true })
vim.keymap.set("n", "gb", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true })

for _, mapping in ipairs(nmappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end
