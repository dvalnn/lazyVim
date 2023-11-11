return {
  {
    "mfussenegger/nvim-jdtls",
    config = function()
      local conf = {
        cmd = { "/home/dvalinn/.local/share/nvim/mason/bin/jdtls" },
        root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
      }
      require("jdtls").start_or_attach(conf)
    end,
  },
}
