return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  vim.api.nvim_set_keymap("n", "gb", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true }),
}
