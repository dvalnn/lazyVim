return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.cmd("colorscheme onedark_vivid")
      end,
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
