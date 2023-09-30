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
  },
  {
    "catppuccin/nvim",
  },
}
