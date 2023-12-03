return {
  "echasnovski/mini.surround",
  cond = _G.Settings.plugins_enabled.mini_surround,
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = true,
}
