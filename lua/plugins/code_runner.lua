return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        -- in setup function
        filetype = {
          java = { "cd $dir &&", "javac $fileName &&", "java $fileNameWithoutExt" },
          python = "python -u",
          typescript = "deno run",
          rust = { "cd $dir &&", "rustc $fileName &&", "$dir/$fileNameWithoutExt" },
          cs = function(...)
            local root_dir = require("lspconfig").util.root_pattern("*.csproj")(vim.loop.cwd())
            return "cd " .. root_dir .. " && dotnet run$end"
          end,
        },
        project = {
          ["~/python/intel_2021_1"] = {
            name = "Intel Course 2021",
            description = "Simple python project",
            file_name = "POO/main.py",
          },
          ["~/deno/example"] = {
            name = "ExapleDeno",
            description = "Project with deno using other command",
            file_name = "http/main.ts",
            command = "deno run --allow-net",
          },
          ["~/cpp/example"] = {
            name = "ExapleCpp",
            description = "Project with make file",
            command = "make buid && cd buid/ && ./compiled_file",
          },
          ["~/private/.*terraform%-prod.-/.-"] = {
            name = "ExampleTerraform",
            description = 'All Folders in ~/private containing "terraform-prod"',
            command = "terraform plan",
          },
        },
      })
    end,
  },
  {
    "CRAG666/betterTerm.nvim",
    config = function()
      require("betterTerm").setup()
      local betterTerm = require("betterTerm")
      -- toggle firts term
      vim.keymap.set({ "n", "t" }, "<C-;>", betterTerm.open, { desc = "Open terminal" })
      -- Select term focus
      vim.keymap.set({ "n" }, "<leader>tt", betterTerm.select, { desc = "Select terminal" })
      -- Create new term
      local current = 2
      vim.keymap.set({ "n" }, "<leader>tn", function()
        betterTerm.open(current)
        current = current + 1
      end, { desc = "New terminal" })
      -- use the best keymap for you
      -- change 1 for other terminal id
      -- Change "get_filetype_command()" to "get_project_command().command" for running projects
      vim.keymap.set("n", "<leader>te", function()
        require("betterTerm").send(
          require("code_runner.commands").get_filetype_command(),
          1,
          { clean = false, interrupt = true }
        )
      end, { desc = "Excute File" })
    end,
  },
}
