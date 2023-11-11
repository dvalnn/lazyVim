-- bootstrap lazy.nvim, LazyVim and your plugins
vim.api.nvim_create_autocmd("VimEnter", {
  command = "Neotree right",
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--   command = "Neotree toggle",
-- })

require("config.lazy")
