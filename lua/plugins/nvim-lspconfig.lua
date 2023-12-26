return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        keys = {
          {
            "<leader>ch",
            function()
              require("rust-tools").inlay_hints.unset()
            end,
            desc = "Hide inlay hints in current buffer",
          },
          {
            "<leader>cs",
            function()
              require("rust-tools").inlay_hints.set()
            end,
            desc = "Show inlay hints in current buffer",
          },
          { "K", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
          { "<leader>cR", "<cmd>RustCodeAction<cr>", desc = "Code Action (Rust)" },
          -- { "<leader>cRr", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
        },
      },
    },
  },
}
