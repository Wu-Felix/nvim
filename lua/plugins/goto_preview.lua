--预览窗口
return {
  "rmagatti/goto-preview",
  lazy = true,
  keys = { "gp" },
  config = function()
    require("goto-preview").setup({
      width = 120,
      height = 25,
      default_mappings = true,
      debug = false,
      opacity = nil,
      post_open_hook = nil,
      vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>"),
      -- You can use "default_mappings = true" setup option
      -- Or explicitly set keybindings
      -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
      -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
      -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
    })
  end,
}
