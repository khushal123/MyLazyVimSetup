return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    opts = {
      defaults = {
        file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/" },
      },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<C-p>",
        function() require("telescope.builtin").find_files({ 
          find_command = {
              "rg", "-uu", "--files", "--hidden",
              "-g", "!.git/",
              "-g", "!node_modules/",
              "-g", "!tmp/",
              "-g", "!build/",
              "-g", "!dist/",
              "-g", "!.vscode/",
          },
        }) end,
        desc = "Find File",
      },
      {
        "<C-A>p",
        "<cmd>Telescope live_grep<cr>",
        desc = "Live Grep",
      },
      {
        "<leader><leader>",
        "false",
      },
    },
  },
}
