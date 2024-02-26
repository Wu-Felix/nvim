return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({})
  end,
  vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>"),
  -- vim.keymap.set("n", "<leader>cs", "<cmd>Lspsaga outline<CR>"),
  vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>"),
  vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>"),
  vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>"),
  vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>"), -- jump to previous diagnostic in buffer
  vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>"),
}
