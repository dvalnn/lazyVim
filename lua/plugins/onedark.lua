return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
        transparent = true,
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("onedark").load()
        require("notify").setup({
          background_colour = "#000000",
        })
      end,
    },
  },
}
