return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  lazy = true,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("ts_context_commentstring").setup({
      enable = true,
      enable_autocmd = false,
    })
    vim.g.skip_ts_context_commentstring_module = true
  end,
}
