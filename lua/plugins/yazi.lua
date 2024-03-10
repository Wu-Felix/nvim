return {
  {
    "rolv-apneseth/tfm.nvim",
    lazy = true,
    keys = { "<space>y" },
    config = function()
      -- Set keymap so you can open the default terminal file manager (yazi)
      vim.api.nvim_set_keymap("n", "<leader>ye", "", {
        noremap = true,
        callback = require("tfm").open,
      })
      vim.api.nvim_set_keymap("n", "<leader>ys", "", {
        noremap = true,
        callback = function()
          local tfm = require("tfm")
          tfm.open(nil, tfm.OPEN_MODE.split)
        end,
      })
      vim.api.nvim_set_keymap("n", "<leader>yS", "", {
        noremap = true,
        callback = function()
          local tfm = require("tfm")
          tfm.open(nil, tfm.OPEN_MODE.vsplit)
        end,
      })
      vim.api.nvim_set_keymap("n", "<leader>yt", "", {
        noremap = true,
        callback = function()
          local tfm = require("tfm")
          tfm.open(nil, tfm.OPEN_MODE.tabedit)
        end,
      })
      vim.api.nvim_set_keymap("n", "<leader>yc", "", {
        noremap = true,
        callback = function()
          local tfm = require("tfm")
          local selected_tfm = vim.fn.input("Change file manager: ")

          if selected_tfm ~= "" and tfm.FILE_MANAGERS[selected_tfm] ~= nil then
            tfm.select_file_manager(selected_tfm)
          end
        end,
      })
    end,
    opts = {
      -- TFM to use
      -- Possible choices: "ranger" | "nnn" | "lf" | "vifm" | "yazi" (default)
      file_manager = "yazi",
      -- Replace netrw entirely
      -- Default: false
      replace_netrw = true,
      -- Enable creation of commands
      -- Default: false
      -- Commands:
      --   Tfm: selected file(s) will be opened in the current window
      --   TfmSplit: selected file(s) will be opened in a horizontal split
      --   TfmVsplit: selected file(s) will be opened in a vertical split
      --   TfmTabedit: selected file(s) will be opened in a new tab page
      enable_cmds = false,
      -- Custom keybindings only applied within the TFM buffer
      -- Default: {}
      keybindings = {
        ["<ESC>"] = "q",
      },
      -- Customise UI. The below options are the default
      ui = {
        border = "rounded",
        height = 0.5,
        width = 0.5,
        x = 0.5,
        y = 0.5,
      },
    },
  },
}
