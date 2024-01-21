return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({})
  end,
  vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>"),
  -- vim.keymap.set("n", "<leader>cs", "<cmd>Lspsaga outline<CR>"),
}
