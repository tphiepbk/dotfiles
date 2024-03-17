-- Disable autoformat for files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "cc", "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})
