-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.timeoutlen = 1000
opt.cursorline = false
vim.cmd(
  [[
	let g:python3_host_prog = 'D:\\software\\anaconda3\\python'
]],
  false
)
