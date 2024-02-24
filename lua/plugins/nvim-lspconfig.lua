return {
  {
    "hinell/lsp-timeout.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
  },
  {
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
            { "<leader>cR", "<cmd>RustRunnables<cr>", desc = "Run Runnables (Rust)" },
            { "<leader>cD", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
          },
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = true,
              },
              -- Add clippy lints for Rust.
              checkOnSave = {
                allFeatures = true,
                allTargets = false,
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = true,
                ignored = {
                  ["async-trait"] = { "async_trait" },
                  ["napi-derive"] = { "napi" },
                  ["async-recursion"] = { "async_recursion" },
                  leptos_macro = { "server" },
                },
              },
            },
          },
        },
      },
    },
  },
}
