return {
  "kevinhwang91/nvim-bqf",
  cond = _G.Settings.plugins_enabled.nvim_bfq,
  event = { "BufReadPre", "BufNewFile" },
  ft = "qf",
  opts = {
    filter = {
      fzf = {
        extra_opts = { "--bind", "ctrl-o:toggle-all", "--delimiter", "│" },
      },
    },
  },
}
