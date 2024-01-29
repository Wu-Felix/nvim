return {
  "lmburns/lf.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    vim.g.lf_netrw = 1
    require("lf").setup({
      escape_quit = false,
      border = "rounded",
      default_action = "drop", -- default action when `Lf` opens a file
      default_actions = { -- default action keybindings
        ["<C-t>"] = "tabedit",
        ["<C-x>"] = "split",
        ["<C-v>"] = "vsplit",
        ["<C-o>"] = "tab drop",
      },
    })
    vim.api.nvim_create_autocmd("User", {
      pattern = "LfTermEnter",
      callback = function(a)
        vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true })
      end,
    })
  end,
  vim.keymap.set("n", "<leader>to", function()
    require("lf").start(
      -- nil, -- this is the path to open Lf (nil means CWD)
      -- this argument is optional see `.start` below
      {
        -- Pass options (if any) that you would like
        dir = "", -- directory where `lf` starts ('gwd' is git-working-directory)
        direction = "float", -- window type: float horizontal vertical
        border = "double", -- border kind: single double shadow curved
        height = 100, -- height of the *floating* window
        width = 130, -- width of the *floating* window
        mappings = true, -- whether terminal buffer mapping is enabled
      }
    )
  end, { noremap = true }),
}
