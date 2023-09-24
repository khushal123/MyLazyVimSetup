return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    config = function()
      vim.cmd("colorscheme miasma")
    end,
  },
  {
    "decaycs/decay.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "decay",
    },
    config = function()
      vim.cmd("colorscheme decay")
    end,
  },
}
