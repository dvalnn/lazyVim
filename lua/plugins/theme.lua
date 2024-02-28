return {
  {
    "hiphish/rainbow-delimiters.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- load when a buffer is opened or created
  },
  {
    "brenoprata10/nvim-highlight-colors",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvim-highlight-colors").setup({
        render = "background", -- or 'foreground' or 'first_column'
        enable_named_colors = true,
        enable_tailwind = false,
      })
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true,
          terminal_colors = true,
        },
        styles = {
          types = "NONE",
          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "bold,italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_text = "NONE",
          Normal = "NONE",
          Folded = "NONE",
          SignColumn = "NONE",
          Statusline = "NONE",
          Tabline = "NONE",
        },
      })
    end,
  },
}
