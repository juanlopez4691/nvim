return {
  {
    "willothy/flatten.nvim",
    cond = _G.Settings.plugins_enabled.flatten,
    config = true,
    -- or pass configuration with
    -- opts = {  }
    -- Ensure that it runs first to minimize delay when opening file from terminal
    lazy = false,
    priority = 1001,
  },
}
