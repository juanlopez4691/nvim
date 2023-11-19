local core_settings = require('core.settings')

return {
  'windwp/nvim-autopairs', -- plugin 1
  cond = core_settings.plugins_enabled.nvim_autopairs,
  event = { 'InsertEnter' },
  config = function()
    local status_ok, npairs = pcall(require, 'nvim-autopairs')

    if not status_ok then
      return
    end

    npairs.setup({})
  end
}

