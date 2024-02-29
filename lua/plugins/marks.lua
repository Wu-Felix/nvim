return {
  {
    "LintaoAmons/bookmarks.nvim",
    dependencies = {
      { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
    },
    vim.keymap.set(
      { "n", "v" },
      "<leader>mm",
      "<cmd>BookmarksMark<cr>",
      { desc = "Mark current line into active BookmarkList." }
    ),
    vim.keymap.set(
      { "n", "v" },
      "<leader>mo",
      "<cmd>BookmarksGoto<cr>",
      { desc = "Go to bookmark at current active BookmarkList" }
    ),
    vim.keymap.set(
      { "n", "v" },
      "<leader>ma",
      "<cmd>BookmarksCommands<cr>",
      { desc = "Find and trigger a bookmark command." }
    ),
  },
  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup({
        default_mappings = true,
        -- builtin_marks = { ".", "<", ">", "^" },
        cyclic = true,
        force_write_shada = false,
        refresh_interval = 250,
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        excluded_filetypes = {
          "qf",
          "NvimTree",
          "toggleterm",
          "TelescopePrompt",
          "alpha",
          "netrw",
        },
        bookmark_0 = {
          sign = "",
          virt_text = "hello world",
          annotate = false,
        },
        mappings = {},
      })
    end,
  },
}
