local core_settings = require('core.settings')

return {
  {
      'willothy/flatten.nvim',
      cond = core_settings.plugins_enabled.flatten,
      config = true,
      -- or pass configuration with
      -- opts = {  }
      -- Ensure that it runs first to minimize delay when opening file from terminal
      lazy = false,
      priority = 1001,
  },
}
