return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            position = "right",
            dir = require("lazyvim.util").root(),
          })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ toggle = true, position = "right", dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({ source = "git_status", position = "right", toggle = true })
        end,
        desc = "Git explorer",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({ source = "buffers", position = "right", toggle = true })
        end,
        desc = "Buffer explorer",
      },
    },
  },

  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
      require("oil").setup()
    end,

    keys = {
      {
        "<leader>fe",
        function()
          vim.cmd("Oil --float")
        end,
        desc = "Explorer Oil (float)",
      },
      {
        "<leader>fE",
        function()
          vim.cmd("Oil")
        end,
        desc = "Explorer Oil",
      },
    },
  },
}
