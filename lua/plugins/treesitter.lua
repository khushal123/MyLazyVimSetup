return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "go",
        "gomod",
        "gowork",
        "gosum",
        "typescript",
        "tsx",
        "json",
        "json5",
        "jsonc",
        "ron",
        "rust",
        "toml",
        "python",
      })
    end,
  },
}
