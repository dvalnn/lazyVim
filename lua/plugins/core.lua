return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "catppuccin",
    },
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "folke/which-key.nvim",
    enabled = true,
    config = function()
      vim.o.timeoutlen = 1000
    end,
  },
}
