return {
  'nvim-pack/nvim-spectre',
  cond = _G.Settings.plugins_enabled.nvim_spectre,
  build = false,
  cmd = 'Spectre',
  opts = {
    open_cmd = 'noswapfile vnew',
  },
  -- stylua: ignore
}
