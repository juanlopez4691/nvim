return {
  "windwp/nvim-autopairs",
  cond = _G.Settings.plugins_enabled.nvim_autopairs,
  event = { "InsertEnter" },
  config = function()
    local status_ok, npairs = pcall(require, "nvim-autopairs")

    if not status_ok then
      return
    end

    npairs.setup({})
  end,
}
