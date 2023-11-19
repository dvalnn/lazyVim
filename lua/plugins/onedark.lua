return {
  {
    "navarasu/onedark.nvim",
    config = function()
      local isTransparent = true

      if vim.g.neovide then
        isTransparent = false
      end

      require("onedark").setup({
        style = "darker",
        termcolors = 256,
        transparent = isTransparent,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("onedark").load()

        if not vim.g.neovide then
          -- require("notify").setup({
          --   background_colour = "#000000",
          -- })
          vim.api.nvim_set_hl(0, "Float", { bg = "none" })
          vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          vim.api.nvim_set_hl(0, "MsgArea", { bg = "#2F333A" })
        end
      end,
    },
  },
}
