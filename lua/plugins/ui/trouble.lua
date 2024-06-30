return {
  "folke/trouble.nvim",
  cond = _G.Settings.plugins_enabled.trouble,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Trouble",
  config = function(_, opts)
    require("trouble").setup({
      use_diagnostic_signs = true,
      mode = "workspace_diagnostics", -- start in workspace diagnostics mode
      action_keys = {
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        -- other action keys
      },
    })
  end,
}
