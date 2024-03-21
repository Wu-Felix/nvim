return {
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "light"
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    config = function()
      require("headlines").setup({
        org = {},
      })
    end,
    -- config = function()
    --   vim.cmd([[highlight Headline1 guibg=#D19A66]])
    --   vim.cmd([[highlight Headline2 guibg=#21262d]])
    --   vim.cmd([[highlight CodeBlock guibg=#1c1c1c]])
    --   vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])
    -- end,
  },
  {
    "Zeioth/markmap.nvim",
    build = "yarn global add markmap-cli",
    cmd = { "MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop" },
    opts = {
      html_output = "/tmp/markmap.html", -- (default) Setting a empty string "" here means: [Current buffer path].html
      hide_toolbar = false, -- (default)
      grace_period = 3600000, -- (default) Stops markmap watch after 60 minutes. Set it to 0 to disable the grace_period.
    },
    config = function(_, opts)
      require("markmap").setup(opts)
    end,
  },
}
