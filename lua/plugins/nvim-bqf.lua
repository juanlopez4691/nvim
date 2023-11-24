local core_settings = require('core.settings')

return {
  'kevinhwang91/nvim-bqf',
  cond = core_settings.plugins_enabled.nvim_bfq,
  event = { 'BufReadPre', 'BufNewFile' },
  ft = 'qf',
  opts = {
    filter = {
      fzf = {
        extra_opts = { '--bind', 'ctrl-o:toggle-all', '--delimiter', '│' },
      },
    },
  },
}
