return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["c"] = { "clang_format" },
      },
    },
  },
}
