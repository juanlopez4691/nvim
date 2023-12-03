return {
  "echasnovski/mini.indentscope",
  cond = _G.Settings.plugins_enabled.mini_indentscope,
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local indentsc = require("mini.indentscope")

    indentsc.setup({
      draw = {
        animation = indentsc.gen_animation.none(),
      },
      options = {
        try_as_border = true,
      },
      symbol = "│",
    })
  end,
}
