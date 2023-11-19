local core_settings = require('core.settings')

return {
  'echasnovski/mini.surround',
  cond = core_settings.plugins_enabled.mini_surround,
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  config = true,
}

