return {
  "echasnovski/mini.cursorword",
  cond = _G.Settings.plugins_enabled.cursorword,
  event = { "BufReadPre", "BufNewFile" },
  version = false,
  config = function()
    require("mini.cursorword").setup({})

    -- Change style of highlighting
    vim.cmd("hi! link MiniCursorword Visual")
    vim.cmd("hi! MiniCursorwordCurrent gui=nocombine guifg=NONE guibg=NONE")
  end,
}
