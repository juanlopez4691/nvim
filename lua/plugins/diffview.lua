local core_settings = require('core.settings')

return {
  'sindrets/diffview.nvim',
  cond = core_settings.plugins_enabled.diffview,
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
}

