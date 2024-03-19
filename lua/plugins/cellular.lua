return {
  "eandrju/cellular-automaton.nvim",
  config = function()
    vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton game_of_life<CR>")
  end,
}
