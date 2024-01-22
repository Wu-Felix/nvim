return {
  "voldikss/vim-floaterm",
  vim.cmd([[
  let g:floaterm_keymap_new = '<Leader>tw'
" 切换terminal模式
  let g:floaterm_keymap_toggle = '<Leader>tt'
  let g:floaterm_keymap_kill = '<c-q>'
  let g:floaterm_wintype = 'float'
  let g:floaterm_position = 'center'
  " 终端宽(0,1)
  let g:floaterm_width = 0.9
  " 终端高(0,1)
  let g:floaterm_height = 0.9
  " 终端标题
  let g:floaterm_title = 'floaterm: $1/$2'
		]]),
}
